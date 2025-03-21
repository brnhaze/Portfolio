# Ashwin's Data Science & Analytics Portfolio 🚀

Welcome to my Data Science & Analytics Portfolio! This repository showcases a collection of projects, analyses, and machine learning models that demonstrate my expertise in data-driven decision-making, AI, and automation.

Explore my work in machine learning, predictive modeling, data visualization, and recommendation systems. Each project highlights key insights, methodologies, and technologies used.

📌 More exciting projects coming soon! Stay tuned! 🎯

## Table of Contents
- [About](#About-Me)
- [Projects](#Projects)
  - [Neural Network (Deep Learning) Predicting Liver Disease Using Machine Learning A Data Driven Approach in Binary Classification](#Neural_Network_Predicting_Liver_Disease_Using_Machine_Learning_A_Data_Driven_Approach_in_Binary_Classification)
  - [Music Genre Classification with Deep Learning](#Music_Genre_Classification_with_Deep_Learning)
  - [Music Recommended System](#Music_Recommended_System)
  - [Amazon Product Recommended System](#Amazon_Product_Recommended_System)
  - [Cost of Living & Country Ranking Prediction](#Cost_of_Living_and_Country_Ranking_Prediction)
  - [Dragon Ball Directory](#Dragon_Ball_Z_Unsupervised_and_Supervised_Learning)
  - [Predicting Car Prices Using Linear Regression: A Machine Learning Approach with Data Preprocessing and EDA](#Car_Price_Prediction)
  - [News API](#News_API)
  - [IGN Video Game Ratings](#IGN_Video_Game_Ratings)
  - [Disney Movies](#Disney-Movies)
  - [Capstone Project](#Capstone)
  - [Excel Functions](#Excel_Functions)
- [Education & Certifications](#Education)
- [Cover Letter & Resume](#Resume)
- [MIT e-portfolio](#MIT_e_portfolio)
- [Contact Information](#Contact)

## 🔹About-Me

Data-driven professional with a strong foundation in applied data science and machine learning, backed by MIT's Applied Data Science Program (ADSP). Proficient in Python, SQL, Tableau, and Power BI, with expertise in supervised andunsupervised learning, regression analysis, recommendation systems, neural networks, and AI-driven decision-making. Skilled in statistical modeling, data visualization, and applying AI/ML techniques to real-world business problems.

Adept at leveraging automation to enhance efficiency, ensure data integrity, and drive strategic insights. Committed to delivering innovative, data-driven solutions that optimize productivity and align with organizational goals.

🔹 Key Expertise & Specializations
- ✅ Machine Learning & AI – Supervised & Unsupervised Learning, Neural Networks, SVD, Clustering
- ✅ Data Analytics & Visualization – Python, SQL, Tableau, Power BI, Pandas, Seaborn, Matplotlib
- ✅ ETL & Automation – Azure Pipelines, Control-M, Dollar Universe, Splunk, ServiceNow
- ✅ Cloud & Big Data – AWS, Azure, PySpark, Apache Spark

In my current role, I have been working as a Command Centre Engineer (Systems Specialist/Analyst) at VanCity Savings Credit
Union, where I focus on monitoring, automation, deployment, and troubleshooting within IT operations. My role involves
maintaining system stability, data workflows, and process automation while collaborating with cross-functional teams to
ensure operational efficiency. I work with Splunk, ServiceNow, PagerDuty, Control-M, and Azure Pipelines to monitor and
optimize system performance, manage ETL processes, and automate workflows for enhanced data processing and
reporting. Additionally, I contribute to documentation and knowledge management, ensuring consistency in technical
procedures and operational efficiency.

I have completed the Applied Data Science Program (ADSP) at the Massachusetts Institute of Technology (MIT), where I
advanced my expertise in supervised and unsupervised learning, machine learning, deep learning, and recommendation
systems. This builds upon my Data Analytics Diploma from Lighthouse Labs, where I gained hands-on experience with
Python, R, and PostgreSQL for statistical modeling and data visualization. Additionally, my Computer Information Systems
Administration (CISA) diploma from the British Columbia Institute of Technology (BCIT) has provided me with a strong foundation in network management, cloud services,
and data security.

## Projects

### Neural_Network_Predicting_Liver_Disease_Using_Machine_Learning_A_Data_Driven_Approach_in_Binary_Classification

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/Liver%20Disease/liver.jpeg" 
         alt="logo" width="400" height="250">
</div>

Description
  This project leverages machine learning techniques to predict the presence of liver disease using a binary classification approach. Multiple models were trained and evaluated to determine the most effective approach for accurate disease detection.

Key Features
  - Data Processing & Feature Engineering: Preprocessing of liver disease datasets, handling missing values, scaling, and feature selection.
  - Model Development: Comparison of multiple classification models, including Neural Networks, Decision Trees, and Ensemble Learning.
  - Hyperparameter Optimization: Utilized GridSearchCV, Keras Tuner, and other optimization techniques to fine-tune model performance.
  - Evaluation Metrics: Performance assessed using confusion matrices, classification reports, and AUC-ROC curves.
  - Imbalanced Data Handling: Applied SMOTE and other resampling techniques to address class imbalance.
  - Deep Learning Integration: Experimented with ANN-based architectures, optimizing layer configurations for improved accuracy.

Technologies Used
  - Python (Data processing & modeling)
  - TensorFlow/Keras (Deep learning framework)
  - Scikit-learn (Metrics & evaluation)
  - Seaborn & Matplotlib (Data visualization)
  - SMOTE (Imbalanced data handling
  - GridSearchCV & Hyperparameter Tuning (Optimization)

Files
  - [.html notebook](https://github.com/brnhaze/Portfolio/blob/main/Liver%20Disease/Predicting_Liver_Disease_Using_Machine_Learning_A_Data_Driven_Approach_in_Binary_Classification.html)

### Music_Genre_Classification_with_Deep_Learning

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/Music%20Genre/musicgenre.jpg" 
         alt="logo" width="400" height="250">
</div>

Description
  A machine learning project that classifies music genres using MFCC features and deep learning models, comparing Artificial Neural Networks (ANNs) and Convolutional Neural Networks (CNNs) for optimal accuracy.

Key Features
  - Feature Extraction: Utilizes MFCC (Mel-Frequency Cepstral Coefficients) to extract key sound characteristics.
  - Multiple Model Architectures: Implements ANNs (Dense Networks) and CNNs (1D Convolutional Networks) for performance comparison.
  - Performance Evaluation: Uses confusion matrices, classification reports, and accuracy metrics to rank models.
  - Hyperparameter Optimization: Includes dropout, batch normalization, learning rate adjustments to improve generalization.
  - Data Processing & Augmentation: Addresses class imbalance and misclassification through preprocessing techniques.

Technologies Used
  - Python (Data processing & modeling)
  - TensorFlow/Keras (Deep Learning framework)
  - Librosa (Audio feature extraction)
  - Matplotlib & Seaborn (Data visualization)
  - Scikit-learn (Metrics & evaluation)

Files
  - [.html Notebook](https://github.com/brnhaze/Portfolio/blob/main/Music%20Genre/Music%20Genre%20Classification%20using%20Deep%20Learning.html)

Outcome
  - Best ANN model achieved 0.62 accuracy, outperforming CNN models.
  - CNNs showed promise but required deeper architectures & fine-tuning.
  - Identified challenges with genre misclassification, leading to potential improvements with CNN+LSTM hybrid models.

### Music_Recommended_System

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/Recommended%20Systems/Music/music.jpg" 
         alt="logo" width="400" height="250">
</div>

Description

  This project focuses on building a Music Recommendation System using collaborative filtering and content-based filtering techniques. It leverages user-song interaction data to generate personalized song recommendations.

Key Features:
  - ✅ Collaborative Filtering: Uses user-based and item-based similarity to recommend songs based on listening history.
  - ✅ Content-Based Filtering: Applies TF-IDF vectorization and cosine similarity to analyze song metadata for better recommendations.
  - ✅ Hybrid Approach: Combines SVD (Singular Value Decomposition) and user-based filtering for optimized accuracy and personalization.
  - ✅ Performance Evaluation: Models are compared using Precision, Recall, RMSE, and F1-score to assess recommendation quality.

Why This Matters:
  With the growing demand for personalized music experiences, this system helps users discover new songs aligned with their preferences. It can be scaled for real-world applications such as Spotify-like recommendation engines.
  
  🔹 Technologies Used:
  - Python, Pandas, NumPy, Scikit-learn, Surprise Library, NLTK, TF-IDF, Cosine Similarity
  
  🚀 Outcome:
  - A fully functional AI-driven music recommender that intelligently suggests songs based on user behavior and song attributes.

Technologies Used:
    - Python
Files
    - [Document (.html)](https://github.com/brnhaze/Portfolio/blob/main/Recommended%20Systems/Music/Music_Recommendation_System.html)
    - [PowerPoint](https://github.com/brnhaze/Portfolio/blob/main/Recommended%20Systems/Music/Music%20Recommendation%20System.pdf)
      - Please contact me for presentation

### Amazon_Product_Recommended_System

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/Recommended%20Systems/Amazon%20Products/amaprod.jpg" 
         alt="logo" width="300" height="300">
</div>

Description

  This project focuses on building an Amazon Product Recommendation System using advanced machine learning and data science techniques. The goal is to enhance the shopping experience by providing personalized product recommendations based on user behavior and product interactions.

Key Features:
  - ✅ Collaborative Filtering: Recommends products based on user purchase history and preferences.
  - ✅ Content-Based Filtering: Suggests similar items by analyzing product descriptions, categories, and features.
  - ✅ Hybrid Approach: Combines collaborative and content-based filtering for more accurate recommendations.
  - ✅ Performance Optimization: Evaluates models using Precision, Recall, RMSE, and F1-score to improve accuracy.
  
Why This Matters?
  In a fast-growing e-commerce environment, personalized recommendations drive better customer engagement and increased sales. This system mimics Amazon’s recommendation engine to suggest relevant products efficiently.
  
  🔹 Technologies Used: Python, Pandas, NumPy, Scikit-learn, Surprise Library, TF-IDF, Cosine Similarity, SVD
  
  🚀 Outcome: A smart AI-driven product recommender that helps users find products they’ll love while improving business revenue.

Technologies Used:
    - Python
Files
    - [Html (.html)](https://github.com/brnhaze/Portfolio/blob/main/Recommended%20Systems/Amazon%20Products/Amazon%20Products%20RecommendationSystem.html)

### Dragon_Ball_Z_Unsupervised_and_Supervised_Learning

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/DragonBall/dbz.jpg" 
         alt="logo" width="600" height="300">
</div>

Description

  This repository contains a collection of projects focused on various machine learning and deep learning techniques applied across different domains, including supervised learning, unsupervised learning, recommendation systems, and deep learning architectures. The projects explore feature engineering, model selection, hyperparameter tuning, and performance evaluation.

Project Categories
  - [Exploratory Data Analysis (EDA)](https://github.com/brnhaze/Portfolio/blob/main/DragonBall/1%20EDA.html)
    - Libraries & Tools: Pandas, NumPy, Matplotlib, Seaborn
    - Techniques Used: Data cleaning and preprocessing, Handling missing values, Feature correlation analysis, and Data visualization (histograms, scatter plots, box plots, heatmaps)
  - [Unsupervised Learning](https://github.com/brnhaze/Portfolio/blob/main/DragonBall/2%20Unsupervised%20Learning.html)
    - Libraries & Tools: Scikit-learn, Pandas, Matplotlib, Seaborn
    - Techniques Used: Clustering: K-Means, Hierarchical Clustering, DBSCAN, Dimensionality Reduction: Principal Component Analysis (PCA), t-SNE, Silhouette Score & Elbow Method for optimal cluster selection
  - Supervised Learning - Regression
    - Libraries & Tools: Scikit-learn, Pandas, NumPy, Matplotlib, Seaborn
    - Techniques Used: Linear Regression, Ridge Regression, Lasso Regression, Decision Trees, Random Forest Regressor, Feature Selection & Multicollinearity Handling (VIF, P-Values), Performance Metrics: Root Mean Squared Error (RMSE), Mean Absolute Error (MAE), R² Score, and Hyperparameter Tuning (GridSearchCV)
    - Notebooks (.html)
      - [Supervised Learning Regression](https://github.com/brnhaze/Portfolio/blob/main/DragonBall/3%20Supervised%20Learning%20Regression.html)
      - [Supervised Learning Regression Lasso/Ridge](https://github.com/brnhaze/Portfolio/blob/main/DragonBall/4%20Supervised%20Learning%20Regression%20Lasso_Ridge.html)
      - [Supervised Learning Regression Continuous](https://github.com/brnhaze/Portfolio/blob/main/DragonBall/6%20Supervised%20Learning%20Regression%20Continuous.html)
  - Supervised Learning - Classification
    - Libraries & Tools: Scikit-learn, Pandas, NumPy, Matplotlib, Seaborn
    - Techniques Used: Classification Models: Logistic Regression, Decision Trees, Random Forest, Gradient Boosting (XGBoost, AdaBoost), Support Vector Machine (SVM), Neural Networks, Feature Encoding: One-Hot Encoding, Label Encoding, Handling Class,, Imbalance: SMOTE (Synthetic Minority Over-sampling), Model Evaluation Metrics: Accuracy, Precision, Recall, F1-Score, ROC Curve, AUC Score, Hyperparameter Tuning (GridSearchCV, RandomizedSearchCV)
    - Notebooks (.html)
      - [Supervised Learning Classification](https://github.com/brnhaze/Portfolio/blob/main/DragonBall/5%20Supervised%20Learning%20Classification.html)
      - [Supervised Learning Classification with Decision Trees, etc](https://github.com/brnhaze/Portfolio/blob/main/DragonBall/7%20Supervised%20Learning%20Classification%20with%20Decision%20Trees%20etc.html)

### Cost_of_Living_and_Country_Ranking_Prediction

<div align="center">
    <img src="https://images.movehub.com/wp-content/uploads/2018/03/14162459/LC-22.png" 
         alt="logo" width="600" height="300">
</div>

Description

  This project explores predicting country rankings based on cost of living and other economic factors. Using supervised learning techniques, I trained a model to compare the original top 10 country rankings with the predicted rankings, analyzing shifts and feature importance.

  📊 Key Insights:
    - XGBoost Regressor was the best-performing algorithm.
    - Feature Importance Analysis revealed key economic factors driving predictions.
    - Some countries shifted in ranking, e.g., Belgium dropped from 3rd to 8th, showing that different variables influenced the final rankings.

  🚀 Future Improvements:
    - Fine-tuning hyperparameters for better accuracy.
    - Exploring additional socioeconomic and environmental features.
    - Integrating deep learning for more complex ranking relationships.

Technologies Used:
  - Python (pandas, numpy, matplotlib & seaborn, XGBoost, scikit-learn)
 
  Files
  -   [Html (.html)](https://drive.google.com/file/d/1xJvw6j8dlGmypRWeBxhJQF82mGBb6fgY/view?usp=drive_link)

### Car_Price_Prediction

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/Car%20Price%20Prediction/car.jpeg" alt="logo">
</div>

Description

  In this project, I developed a machine learning model to predict car prices using a dataset from Kaggle. The process began with data cleaning and preprocessing, where I standardized column names, handled missing values, and converted categorical features into numerical representations. I then conducted exploratory data analysis to understand the relationships between the features and the target variable, MSRP, and normalized skewed distributions using logarithmic transformations. Feature engineering was an essential part of the project, where I created new features like car age and encoded categorical variables, adding interaction terms to capture complex relationships in the data. I implemented a baseline Linear Regression model, which I further refined using regularization techniques to prevent overfitting. The model was validated using Root Mean Square Error (RMSE) on training and validation datasets, achieving a competitive score that indicated strong predictive power and generalization capability. The final model provided accurate price predictions, identifying key factors such as engine specifications, vehicle size, and fuel type that influence car prices. This project demonstrated the practical application of data science techniques in the automotive industry, offering insights that could be used for pricing strategies and market analysis. The complete project can be viewed [here](link to your GitHub repository).

Technologies Used:
    - Python
Files
    - [.ipynb](https://github.com/brnhaze/Portfolio/blob/main/Car%20Price%20Prediction/1%20Project%20Plan.ipynb)
    - [Raw Data.csv](https://github.com/brnhaze/Portfolio/blob/main/Car%20Price%20Prediction/data.csv)

### News_API

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/News%20API/newsapi.jpg" alt="logo">
</div>

Description

  I created this project to demonstrate my proficiency in data extraction, data analysis, and sentiment analysis using APIs, data manipulation libraries, and Natural Language Processing (NLP) techniques. By integrating the News API, I was able to gather real-time data about a trending topic, perform in-depth analysis, and derive insights, which are crucial skills for a Data Analyst role.

Technologies Used:
  - Python

Files
  - [API (.ipynb)](https://github.com/brnhaze/Portfolio/blob/main/News%20API/1%20API.ipynb)
  - [Articles (.ipynb)](https://github.com/brnhaze/Portfolio/blob/main/News%20API/2%20Articles.ipynb)
  - [articles.csv](https://github.com/brnhaze/Portfolio/blob/main/News%20API/articles.csv)

### IGN_Video_Game_Ratings

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/Images/logo.jpg" alt="logo">
</div>

Description:

  The "IGN Video Game Ratings" project aims to analyze and visualize video game ratings data sourced from IGN (Imagine Games Network), a prominent video game and entertainment media website. The dataset contains information on various aspects of video games, including titles, scores, score phrases, platforms, genres, and release dates

Technologies Used:
  - SQL
  - Python
  - Tableau

- [Visualization](https://public.tableau.com/app/profile/ashwin.pal3698/viz/IGNVideoGameRatings/Dashboard1)

<p align="center">
  <a href="https://public.tableau.com/app/profile/ashwin.pal3698/viz/IGNVideoGameRatings/Dashboard1">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/Images/ign_video_game_ratings.jpg" alt="IGN Video Game Rating" width="500">
  </a>
</p>

- [Power Bi Visualization](https://app.powerbi.com/view?r=eyJrIjoiNzJlMDhkYjMtMTg3ZC00YTc2LWE3ODEtZDYyODYyNjg1YzM3IiwidCI6ImYyZWI4ZTVjLWQzYjctNDM5ZC1hMzYwLWExMmZhOTM2YmE1YiJ9)

<p align="center">
  <a href="https://app.powerbi.com/view?r=eyJrIjoiNzJlMDhkYjMtMTg3ZC00YTc2LWE3ODEtZDYyODYyNjg1YzM3IiwidCI6ImYyZWI4ZTVjLWQzYjctNDM5ZC1hMzYwLWExMmZhOTM2YmE1YiJ9">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/powerBI/image.jpg" alt="Report Screenshot">
  </a>
</p>

This report provides insights into our data and can be interacted with directly in the Power BI service.


Files
  - SQL
    - [Original File (csv)](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/Original%20File/game_ratings.csv)
    - [Create Table](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/SQL/1%20create%20tables.sql)
    - [Import File](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/SQL/2%20Import%20Files.sql)
    - [Data Profiling, Validation, & Cleansing](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/SQL/3%20Data%20Profiling_Validation_Cleansing.sql)
    - [Export File](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/SQL/4%20export%20file.sql)
    - [Cleaned File (csv)](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/SQL/sql_cleaned_games.csv)
  - Python
    - [Data Profiling](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/Python/1%20Data%20Profiling.ipynb)
    - [Data Validation](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/Python/2%20Data%20Validation.ipynb)
    - [Data Cleansing](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/Python/3%20Data%20Cleansing.ipynb)
    - Exploratory Data Analysis (EDA)
      - [Data Visualization](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/Python/4%20EDA%20%26%20Data%20Visualization.ipynb)
      - [Machine Learning Algorithm (MLA)](https://github.com/brnhaze/Portfolio/blob/main/IGN%20VIdeo%20Game%20Rarings/Python/5%20EDA%20%26%20MLA.ipynb)
  - [Tableau Book](https://github.com/brnhaze/Portfolio/tree/main/IGN%20VIdeo%20Game%20Rarings/Tableau)

### Disney-Movies

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/Images/logo.jpg" alt="logo">
</div>

Title: QA
  
Description:

  I have created this repository for the purpose of showcasing my data profiling, data validation, and data cleansing; and quality assurance processes using Excel, Python, and SQL.
  
Technologies Used:
  - Excel
  - SQL
  - Python
  - Tableau

Files: 
  - Excel
    - [Walkthrough](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/Excel/Cleaning_Excel.md)
    - [Excel Uncleaned (csv)](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Uncleaned/Disney_movies.csv)
    - [Excel Cleaned (csv)](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/Excel/Disney_movies.csv)
  - SQL
    - [Walkthrough](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/SQL/sql.md)
    - [Create Database Tables (sql)](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/SQL/1%20Create%20dB%20and%20Table.sql)
    - [Upload Files (sql)](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/SQL/2%20Upload%20FIle.sql)
    - [Profiling, validation, and cleansing 1 (sq)](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/SQL/3%20Quality%20Assurance.sql)
    - [Profiling, validation, and cleansing 2 (sql)](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/SQL/4%20Quality%20Assurance%202.sql)
    - [Currency User Defined Function (sql)](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/SQL/5%20Quality%20Assurance%203.sql)
    - [Profiling, validation, and cleansing 3 (sql)](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/SQL/6%20Quality%20Assurance%204.sql)
  - Python
    - [Data Collection & Inspection](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/Python/1%20import_and_duplicates_columns.ipynb)
    - [Data Cleaning, Transforming, and Validating](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/Python/2%20quality%20assurance.ipynb)
    - [Analysis & Statistics](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/Python/3%20visualization%20and%20statistics.ipynb)
    - [Cleaned .csv File](https://github.com/brnhaze/Portfolio/blob/main/Disney_Movies/Cleaned/Python/df_5.csv)

### Capstone

Title: NFL Penalty Analysis
  
Description:

  Lighthouse Labs Capstone Project

  Explore whether certain player positions tend to receive more penalties than others. Analyzing the distribution of penalties based on player positions to identify any patterns or tendencies.
  
- [Taleau Visualization Link](https://public.tableau.com/app/profile/ashwin.pal3698/viz/NFLPenaltyAnalysis/Story)

<p align="center">
  <a href="https://public.tableau.com/app/profile/ashwin.pal3698/viz/NFLPenaltyAnalysis/Story">
    <img src="https://github.com/brnhaze/capstone/blob/main/images/nfl_analysis.jpg" alt="IGN Video Game Ratings" width="200">
  </a>
</p>

- [Read Me](https://github.com/brnhaze/capstone/blob/main/README.md)
- [Repository Link](https://github.com/brnhaze/capstone) 

Technologies Used:
  - Kaggle
  - Excel
  - PostgreSQL
  - Python (Jupyter Labs)
  - [Tableau](https://github.com/brnhaze/capstone/tree/main/Tableau)

### Excel_Functions

<div align="center">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/Excel/excel_log.jpg" alt="logo">
</div>

Description:

  Excel Functions is a curated compilation showcasing my proficiency in leveraging Excel's vast array of functions to streamline data management and analysis

Files:
  - [Walkthrough](https://github.com/brnhaze/Portfolio/blob/main/Excel/walkthrough.md)
  - [(.xlsx file)](https://github.com/brnhaze/Portfolio/blob/main/Excel/Charts.xlsx)

## Education

  [Applied Data Science Program (ADSP), Massachusetts Institute of Technology (MIT)]()
  
  [Data Analytics Diploma, Lighthouse Labs](https://drive.google.com/file/d/1qZi7_tKmb5kzElikBvMGAhvracI2biPU/view)

  [Google Cybersecurity Certificate, Coursera](https://www.coursera.org/account/accomplishments/specialization/certificate/8LYTW9YMBCWP)

  [Microsoft Certified Data Analyst Associate with Power Bi](https://drive.google.com/file/d/1FxhwwFys8ZnkvQa6axn2sKgh-kJa_uD1/view?usp=sharing)

  [Computer Information Systems Administration, BCIT](https://drive.google.com/file/d/1nBbuoL2uJSxZW7VFi127-Ve5jHlG9nW1/view?usp=sharing)

  [Law Enforcement Studies Diploma, JIBC](https://drive.google.com/file/d/1_-KxEw3X4hKcqmvhLuSRbENABqgnv3M4/view?usp=sharing)

## Resume

[Cover Letter & Cover Letter](https://www.linkedin.com/in/ashwinpal17/)
- Please see LinkedIn profile and contact or make request through email from your professional organizations domain.

## MIT_e_portfolio
<p align="left">
    <img src="https://github.com/brnhaze/Portfolio/blob/main/mit.png" alt="logo" width="120" height="40">
    <span style="vertical-align: middle; margin-left: 5px;"></span>
</p>

## Contact

  [Send Email](mailto:ashwinpraneelpal@hotmail.com)
  
  [LinkedIn](https://www.linkedin.com/in/ashwinpal17/)
