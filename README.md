Journal AI - Your Personalized Journaling Companion

Journal AI is a web app built with Ruby on Rails and powered by Ollama’s Llama model. Create themed journals on any topic, and receive daily AI-generated prompts to guide your reflections and inspire personal growth.

Visit the Repository on GitHub

Features
	•	Create Themed Journals: Define unique topics for your journals, such as “Mindfulness,” “Career Goals,” or deeply personal themes like “Grieving a Loss.”
	•	Daily AI Prompts: Get reflective prompts tailored to your journal’s theme, with a primary question and a sub-question.
	•	Flexible Topics: Create journals that range from lighthearted to profound themes, giving you the flexibility to explore any area of your life.

Getting Started

Prerequisites

To run Journal AI locally, you’ll need:
	•	Ruby (v3.0 or higher)
	•	Rails (v7.0 or higher)
	•	PostgreSQL
	•	Ollama
	•	Llama Model

Installation
	1.	Clone the repository:

git clone https://github.com/maxalings/myjournalAI.git  
cd myjournalAI  


	2.	Install dependencies:

bundle install  
yarn install  


	3.	Set up the database:

rails db:create db:migrate db:seed  


	4.	Install and Run Ollama’s Llama Model:
	•	Install Ollama on your system following the official instructions.
	•	Download the Llama model:

ollama pull llama  


	•	Start the Llama server:

ollama serve  


	5.	Start the Rails server:

rails server  


	6.	Open your browser and navigate to http://localhost:3000.

Usage
	1.	Create a Journal
	•	Click “New Journal” on the dashboard.
	•	Enter a title (e.g., “Self-Discovery”) and save.
	2.	Receive AI Prompts
	•	View daily prompts tailored to your journal’s theme.
	•	Reflect and answer directly within the app or offline.
	
Technology Stack
	•	Backend: Ruby on Rails
	•	AI Integration: Ollama’s Llama model
	•	Database: PostgreSQL
	•	Frontend: HTML, CSS, JavaScript


License

This project is licensed under the MIT License - see the LICENSE file for details.

Contact

For questions, feedback, or suggestions, reach out:
	•	GitHub: @maxalings

Happy journaling! 😊

<img width="1470" alt="Screenshot 2024-12-16 at 16 16 53" src="https://github.com/user-attachments/assets/37624f5c-15fb-494d-aa08-9af23a967630" />
<img width="1470" alt="Screenshot 2024-12-16 at 16 17 55" src="https://github.com/user-attachments/assets/62084332-03b1-4c23-9d5b-40410266017d" />
<img width="1470" alt="Screenshot 2024-12-16 at 16 19 30" src="https://github.com/user-attachments/assets/e75f3ace-aab8-413a-97d2-2593ddac921d" />
<img width="1470" alt="Screenshot 2024-12-16 at 16 27 18" src="https://github.com/user-attachments/assets/93d73b0e-a746-4513-b757-77e9026541b1" />


