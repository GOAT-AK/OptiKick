# OptiKick
A project submitted in partial fulfilment of the  requirements for the bachelor's degree of Computer Science at Mansoura University. Our application is designed to support athletes by integrating biometric monitoring, AI-driven recommendations, aiming to prevent tragic incidents like those involving Christian Eriksen and Ahmed Refaat 

# Table of Contents  

* [Acknowledgments](#Acknowledgments)  
* [Contributors](#Contributors) 
* [OverView](#OverView)
* [Problem](#Problem)
* [Solution](#Solution)
* [why_It's_different](#why_It's_different)
* [Tech_Stack](#Tech_Stack)
* [Tools](#Tools)
* [Requirements](#Requirements)  
* [UI](#UI)  
* [Backend](#Backend)  
* [AI](#AI)
* [Flutter](#Flutter)
* [Future_Work](#Future_Work)
* [Credits](#Credits) 


# Acknowledgments
We would like to express our gratitude to ***Prof. Shahenda Sarhan***, our accomplished supervisor, for her extensive guidance, support, and constructive feedback throughout our graduation project.

We are deeply grateful for her unwavering encouragement and expertise, which have been essential in making this project a success.

We also wish to extend our heartfelt thanks to ***Eng. Mahmoud Abbas*** for his exceptional contribution, insightful feedback, and diligent efforts in providing us with the necessary resources and assistance for our research.

Finally, we would like to express our gratitude to the ***Faculty of Computer and Information Sciences*** for providing us with a conductive learning environment and equipping us with the necessary knowledge and skills to embark on a successful career in our field of study. We are honored to have been a part of such a prestigious institution and look forward to contributing to the field of future. **And, for those students who will read this in the next years, we wish it will help you in your projects. We had a great time in our 4 years, we learned many things, and now it’s your time**.



#  Contributors

* [Amr Khaled](https://github.com/GOAT-AK) (AI Engineer)

* [Sobhy Al-Sayed](https://github.com/sobhysayed) (Backend Developer)

* [Amr Mohamed](https://github.com/AmrMohamed16) (Business Analyst)

* [Shady Ali](https://github.com/shaadyalii) (Business Analyst)

* [Asem Ashraf](https://github.com/Asem-Ashraf-git) (Backend Developer)

* [Asem Ayman](https://github.com/Assem-44) (UI/UX Designer)

* [Seif Gamal](https://github.com/seifgamaal) (UI/UX Designer)

* [Adel Mohamed](https://github.com/adelmohamed556) (Flutter Developer)

* [Hager Samy](https://github.com/Hagersami321) (Backend Developer)



# OverView
This project focuses on analyzing social media data to provide actionable insights for businesses, influencers, and marketers. By leveraging interactive dashboards, the project helps optimize social media strategies, drive audience engagement, and enable data-driven decision-making. This initiative was developed as part of the DEPI Data Engineering Track, ranking in the top 20 participating teams.



# Problem
Athletes today face numerous challenges that can significantly impact their performance, health, and career longevity. Our project addresses the following key problems:

**01. Intense Physical and Mental Demands:** Athletes constantly push their bodies to the limit, which can lead to fatigue, burnout, and decreased performance without proper support and monitoring.

**02. Gaps in Health Monitoring:** Traditional health assessments are periodic and reactive, missing early signs of serious conditions like cardiac arrhythmias or fatigue-related injuries.

**03. Lack of an Integrated System:** There is no unified platform that combines biometric monitoring, training feedback, and real-time risk detection in a seamless, user-friendly way.

**04. Fragmented Data Sources:** Athletes and coaches often rely on multiple disconnected tools and wearables, leading to incomplete or inconsistent data analysis.

**05. Increased Risk of Injury or Underperformance:** Without continuous monitoring and smart recommendations, athletes face higher risks of preventable injuries or suboptimal performance.

**06. Need for Personalized Training:** Most training programs are not tailored to the unique physical responses, recovery rates, and health status of individual athletes.



# Solution
Our application offers an AI-powered, athlete-centric platform that addresses key gaps in modern sports performance and safety. Here's how we solve the problem:

**01. Performance Tracking:** Biometric monitoring allows athletes and coaches to track performance metrics such as heart rate variability (HRV), exertion levels, and recovery status — enabling smarter decisions during training and matches.

**02. Personalized Training:** Using machine learning models, the app tailors training recommendations based on each athlete's unique physiological data, helping to maximize output while reducing overload and fatigue.

**03. Injury Prevention:** By detecting anomalies in biometric signals early, the system can proactively alert coaches and medical staff to potential risks, helping to avoid serious incidents like those involving Christian Eriksen or Ahmed Refaat.

**04. Player Classification:** classify players into 4 categories `Optimal`, `At Risk`, `Recovering`, or `Underperforming` based on physical `readiness`, `Injury risk`, and `fatigue score` — supporting team strategy, substitution decisions, and long-term development plans.

**05. Intuitive Interface:** Built with Flutter and designed in Figma, the user interface is clean, responsive, and easy to navigate — whether you’re a coach, doctor, or athlete — making complex data instantly understandable and actionable.



# why_It's_different
Unlike existing sports performance tools such as WHOOP, Polar Team Pro, Orreco, and Catapult — which each offer only some isolated features — our solution provides an all-in-one intelligent platform.

As shown in the table below, our system uniquely combines personalized training programs, AI-based player classification, intuitive design, injury risk prediction, and performance tracking into a single, seamless experience. This integration empowers coaches, doctors, and athletes to make smarter, safer, and faster decisions backed by real-time data and AI insights.


![Image](https://github.com/user-attachments/assets/8461a2f2-3b94-4b3b-a2a7-9936253db5b3)



# Tech_Stack
- 🤖 **Artificial Intelligence (AI)**
    - **Language:** Python 
        - `scikit-learn`: machine learning algorithms and model training
        - `pandas`, `numpy`: data manipulation and analysis
        - `matplotlib`, `seaborn`: data visualization
    - **Environment:** Jupyter Notebook
 
- 💻 **Backend**
    - **Framework:** Laravel 12.x
    - **Authentication:** Laravel Sanctum
    - **Database:** MySQL
    - **Admin Panel:** Filament 3.x
    - **Real-time Communication:** Pusher
    - **Testing:** PHPUnit
    - **Code Quality:** Laravel Pint
    - **API Testing:** Postman
    
- 📱 **Mobile App**
    - **Framework:** Flutter
    - **UI Design:** Figma  



# Tools

- **Development & Code Management**
    - **Visual Studio Code:** code editor for backend and AI 
    - **Android Studio:**  code editor for flutter
    - **Git & GitHub:** version control and team collaboration
      
- **AI**
    - **Jupyter Notebook:** model training and experiments
    - **Railway:** to host and expose the AI model via API
    
- **Backend Utilities**
    - **Postman:** for testing API endpoints
    - **phpMyAdmin:** for MySQL database management
    - **Pusher:** to handle real-time events between server and mobile app
    
- **Design & Prototyping**
    - **Figma:** UI/UX prototyping and design collaboration
    
- **Project Management**
    - **Notion:** task management and progress tracking
    - **Microsoft Teams & WhatsApp:** team communication
    - **Google Drive:** Document and reporting sharing  



# Requirements



# UI




# Backend




# AI

- **AI Notebooks**
  
   01. `Graduation_Check.ipynb`: *Data Validation & Exploration*
    
        This notebook performs Exploratory Data Analysis (EDA) to ensure data readiness for training. Key tasks include:  
        - Detecting missing or inconsistent values
        - Exploring feature distributions
        - Visualizing data using `matplotlib` and `seaborn`
        - Removing Outliers

- **Goal:** Ensure clean & well-understood data before model training.
 
  02. `Graduation_All.ipynb`: *Model Benchmarking & Optimization*

       In this notebook, we compare six different ML models using `GridSearchCV` to get the best prameters for each one, `k-fold` to ensuring there's no overfitting, and evalueted those 6 models by **5 metrics** and `confussion matrix` identify the best one. Key highlights:
        - Trains multiple models (e.g., Random Forest, SVM, etc.)
        - Optimizes hyperparameters via grid search
        - Evaluates models using accuracy, precision, recall, F1-score and ROC AUC

- **Goal:** Select the best-performing model for real-world deployment.      

  03. `Graduation_Main.ipynb`: *Final Training & Export*

       Here we train the final selected model using the optimal parameters and export it for use in an API:
        - Trains the chosen model on the full dataset
        - Saves both model and scaler as .pkl files
    
- **Goal:** Create production-ready model and preprocessing tools.
  
<hr>

- **API Deployment**

  We deployed the trained model using FastAPI, allowing real-time predictions from any interface (mobile, web, etc.).

 - **Local Setup**

    To run the API locally:

     01. Navigate to the API folder
     02. Make sure the following files are present:
         - `ran_model.pkl` – trained model
         - `scalar.pkl` – scaler for preprocessing
         - `server.py` – FastAPI app script

     03. Run the server using:
            ```bash
             uvicorn server:app --reload

     04. Open your browser and go to: http://localhost:8000/docs - to interact with the API via Swagger UI
 

           
 - **Cloud Deployment (Live API)**

    No installation needed — test the API instantly via our live Railway deployment:

    01. Live API: https://fastapi-predictorg-production.up.railway.app

      You can input your biometric data directly through the web interface and get instant classification results
       




 # Flutter




# Future_Work
- **Real-Time Biometric Tracking:** Integrating advanced wearables for live performance insights and proactive decision-making.
- **Cloud-Based Collaboration:** Enabling seamless data sharing between coaches, doctors, and athletes.
- **Multi-Sport Expansion:** Adapting OptiKick’s AI for different sports and their unique demands.
- **Advanced Performance Statistics:** Incorporating detailed player performance metrics (e.g., assists, big chances created & missed, shots, crosses). These statistics will offer deeper performance insights and support the development of more personalized and effective training plans.
- **AI Video Analysis:** Assessing player movements to detect inefficiencies and potential injuries.
- **Dynamic Article Updates:** Ensuring that articles and medical content within the app are dynamically updated on a regular basis to reflect the latest research and best practices.



# Credits
- Special thanks to:

   I. Our Team Members for their collaboration and dedication to achieving project goals.
  * [Amr Khaled](https://github.com/GOAT-AK) (AI Engineer)

  * [Sobhy Al-Sayed](https://github.com/sobhysayed) (Backend Developer)

  * [Amr Mohamed](https://github.com/AmrMohamed16) (Business Analyst)

  * [Shady Ali](https://github.com/shaadyalii) (Business Analyst)

  * [Asem Ashraf](https://github.com/Asem-Ashraf-git) (Backend Developer)

  * [Asem Ayman](https://github.com/Assem-44) (UI/UX Designer)

  * [Seif Gamal](https://github.com/seifgamaal) (UI/UX Designer)

  * [Adel Mohamed](https://github.com/adelmohamed556) (Flutter Developer)

  * [Hager Samy](https://github.com/Hagersami321) (Backend Developer)
  
- Your support and encouragement were instrumental in the successful completion of this project.



