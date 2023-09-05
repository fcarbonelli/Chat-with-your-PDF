-- STEP 1 --
-- Enable the pgvector extension to work with embedding vectors
create extension vector;

-- STEP 2 --
-- Create a table to store your documents
create table document (
  id bigserial primary key,
  content text, -- corresponds to Document.pageContent
  metadata jsonb, -- corresponds to Document.metadata
  embedding vector(1536) -- 1536 works for OpenAI embeddings, change if needed
);

-- STEP 3 --
-- Create a function to search for documents
create function match_documents (
  query_embedding vector(1536),
  match_count int DEFAULT null,
  filter jsonb DEFAULT '{}'
) returns table (
  id bigint,
  content text,
  metadata jsonb,
  similarity float
)
language plpgsql
as $$
#variable_conflict use_column
begin
  return query
  select
    id,
    content,
    metadata,
    1 - (document.embedding <=> query_embedding) as similarity
  from document
  where metadata @> filter
  order by document.embedding <=> query_embedding
  limit match_count;
end;
$$;