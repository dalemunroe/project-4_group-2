# **IBM HR Analytics Employee Attrition Project**
In this project, we will explore a fictional dataset and perform a comprehensive machine learning analysis using various machine learning models. We will evaluate the models' performance in predicting whether an employee will leave their current employer, and we will also analyze which features have the greatest impact on an employee's decision to leave.

## Dataset
Data Source: https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset

Source Format: **_csv_**

Dependent Variable : **_Attrition_** - (Boolean Y/N)

Independent Variable(s): **_35_** (e.g. basic info, work Info, satisfaction, salary and time related)

## Project Content
1. **Exploring Data**
2. **Distribution of the dataset**
3. **Feature engineering**
4. **Data Scaling**
5. **Model training and performance evaluation**
6. **Data Augmentation**
7. **Feature importance**

## 1. Exploring Data
Data exploration is a critical step in any machine learning project, as it allows us to gain a thorough understanding of the dataset and its features. This includes identifying both numerical and non-numerical data, as well as checking for missing or duplicate values. By carefully examining all of the available features, we can ensure that we use only the most meaningful and relevant ones in our models. Conducting a thorough data exploration helps us make informed decisions and improve the performance of our machine learning models.

**The EDA process:**
- Read the CSV file and perform initial statistical analysis to understand the shape and values of the data
- Preprocess the data by identifying and removing any columns that are not relevant to our analysis to reduce noise and improve the performance of our model
- Write the cleaned data into a SQL database to store the preprocessed data, which we will use for further analysis

~~~~python
df = df.drop(['Over18','EmployeeNumber', 'EmployeeCount', 'StandardHours'], axis = 1)
print(df.shape)
df.head()
~~~~

## 2. Distribution of the dataset

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/dataset_distribution.png)

