import { Inter } from "next/font/google";
import "./globals.css";

const inter = Inter({ subsets: ["latin"] });

export const metadata = {
  title: "Library AI",
  description: "Use AI to ask questions about books."
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html
      className="bg-neutral-[#fafafa]"
      lang="en"
    >
      <body className={inter.className}>{children}</body>
    </html>
  );
}
