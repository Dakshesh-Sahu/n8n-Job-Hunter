# 🤖 AI-Powered Job Hunting Automation Bot

An **AI-driven n8n workflow** that automates job discovery, analysis, and personalized outreach using **Gemini LLM** and **n8n automation**.

This project integrates **LinkedIn job data**, **Google Sheets**, and **Telegram notifications** to create a smart job hunting assistant — capable of fetching relevant job listings, generating tailored cover letters using **Google Gemini AI**, and delivering instant alerts.

---
<img width="1918" height="1078" alt="Image" src="https://github.com/user-attachments/assets/d496c396-2a4a-4e07-b819-02c705d576cf" />

---

## 🧠 Features

- 🔍 **Automated Job Discovery:** Fetches job listings from LinkedIn based on filters like role, experience level, and location.  
- 📊 **Google Sheets Integration:** Stores user preferences and results in a structured format with “Filter” and “Result” sheets.  
- 🧠 **AI Analysis (Gemini LLM):** Evaluates job relevance and generates personalized cover letters.  
- 💬 **Telegram Notifications:** Sends job summaries, scores, and links directly to Telegram.  
- ⚙️ **Prompt-Based Workflow:** Uses dynamic prompts for resume analysis and content generation.  
- 🐳 **Dockerized Setup:** Runs locally in a persistent and scalable containerized environment.

---

## 🏗️ Project Architecture

**Workflow Nodes Overview:**

1. **Trigger (Schedule/Manual):** Starts the automation daily or manually.  
2. **Google Sheets Node:** Reads user filters from a Google Sheet.  
3. **HTTP Request + Code Node:** Fetches LinkedIn job data and parses listings.  
4. **Gemini AI Node:** Analyzes resumes, matches job descriptions, and creates cover letters.  
5. **Google Sheets (Append):** Saves job title, company, score, and AI output.  
6. **Telegram Node:** Sends messages with job title, company, score, and application link.

---

## 🚀 Build and Run the Container

### Using Docker Compose

```bash
docker compose up -d
```

### Or, Run Directly with Docker

```bash
docker run -it --rm \
  --name n8n-jobhunter \
  -p 5678:5678 \
  -v ~/.n8n:/home/node/.n8n \
  n8nio/n8n
```

Once running, open [http://localhost:5678](http://localhost:5678) in your browser.

---

## ⚙️ Configuration

Create a `.env` file in the project root (optional if using Docker environment variables):

```bash
# Google API
GOOGLE_CLIENT_ID=your_google_client_id
GOOGLE_CLIENT_SECRET=your_google_client_secret

# Gemini AI
GEMINI_API_KEY=your_gemini_api_key

# Telegram
TELEGRAM_BOT_TOKEN=your_telegram_bot_token
TELEGRAM_CHAT_ID=your_chat_id
```

💡 You can find your **Google credentials** in the [Google Cloud Console → APIs & Services → Credentials](https://console.cloud.google.com/apis/credentials).  
For **Telegram**, create a bot via [@BotFather](https://t.me/BotFather) and obtain your chat ID using “Get ID Bot”.

---

## 📂 Importing the Workflow in n8n

1. Open [http://localhost:5678](http://localhost:5678).  
2. Click **Import** on the top-right corner.  
3. Select your workflow file (e.g., `workflows/job-hunter.json`).  
4. Update any credentials or environment variables as required.  
5. Click **Execute Workflow** or schedule it to run automatically.

---

## 🧰 Tech Stack & Tools

| Component | Technology |
|------------|-------------|
| Workflow Engine | n8n |
| AI Model | Google Gemini 2.5 Flash |
| Automation | Docker |
| Data Storage | Google Sheets |
| Notifications | Telegram API |
| Language | JavaScript, Prompt Engineering |

---

## 📸 Workflow Preview

---

<img width="1918" height="1020" alt="Image" src="https://github.com/user-attachments/assets/7b4042be-80df-40f5-be3e-b48ef9795982" />

---

<img width="1918" height="1018" alt="Image" src="https://github.com/user-attachments/assets/b610b6a8-c38a-4441-a62d-a0a4abc35c4a" />

---

<img width="1919" height="1024" alt="Image" src="https://github.com/user-attachments/assets/54e374b9-96b5-4aab-b266-60245b7c5e12" />

---

## 🧩 Example Workflow Summary

| Step | Node | Description |
|------|------|-------------|
| 1 | Trigger (Schedule) | Executes the workflow daily or manually |
| 2 | Google Sheets | Fetches filter preferences from the sheet |
| 3 | HTTP Request + Code | Scrapes LinkedIn jobs and parses job data |
| 4 | Gemini AI Node | Generates cover letters and match scores |
| 5 | Google Sheets (Append) | Stores processed job data |
| 6 | Telegram Node | Sends job summaries to your chat |

---

## 📅 Future Enhancements

- ✉️ Integrate Gmail API for sending personalized cold emails  
- ⭐ Add job filtering by company rating  
- 🧠 Enhance AI prompt for resume-based recommendations  
- ☁️ Deploy workflow to Render / VPS for continuous operation  

---


