# Chat with your PDF [TUTORIAL]

![Project Image](https://i.imgur.com/LsTcO3D.png)

## Description

This repository is a tutorial example that allows you to have engaging conversations with your favorite books using the OpenAI ChatGPT API. This project enables you to interact with books, ask questions, seek summaries, and discuss various topics related to the content of your chosen book.

This project is initially configured to enable conversations with the Bible. However, it is designed to be highly customizable, allowing you to configure and use your own PDFs or texts.

Built with OpenAI, Next.js, Vercel AI SDK, Supabase, and LangChain.

## Getting Started

Follow these steps to set up and use the chatbot.

### Prerequisites

Before you begin, ensure you have the following:

- Supabase API Keys
- OpenAI API Key

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/fcarbonelli/Chat-with-your-PDF.git

   ```

2. Open the console in your root folder:

   ```bash
   npm install

   ```

## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`OPENAI_API_KEY`
To get this Key you have to create an OpenAI account. Go to platform.openai.com, click on the top right corner in your username, and click on "View API Keys". Then click on "Create new secret key". This API is pay-per-use

`SUPABASE_PRIVATE_KEY`
`SUPABASE_URL`
For these Keys, create an account on Supabase and create a project. In your left navbar, go to Project Settings. There you will find the Project URL and the Project Secret API Key.

## Set up your PDF

1. You will find in the root directory the bible.pdf file. Delete it and replace it with your own PDF.
2. Open the "scripts" folder and open the index.ts file. Replace on line 18 "bible.pdf" with the name of your PDF.
3. Now open your project in Supabase and click on SQl Editor on the left navbar. Here you have to execute 3 commands that you can find in the "schema.sql" file on the root project.
4. Copy the step 1 in the "schema.sql" file and paste it in the Supabase SQL Editor. Then press RUN.
5. Repeat with the step 2 and 3. Copy the content in the "schema.sql" file and Run it on the SQL Editor. This will create the table for your data and the function that searches the document.
6. Once you have executed eveything succesfully, return the project console and run this command in the root folder:
   ```bash
   npm run embed
   ```
7. This will create all the data in your Supabase table. It can take a few minutes.
8. Open the api folder, then the chat folder, and then the route.ts file. There you will find a systemMessage variable. Change this so your AI is prompt to behave however you want.

## You are ready to start chatting

Update the UI to your needs, and the just run:

```bash
   npm run dev

```
