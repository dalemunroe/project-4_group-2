# **IBM HR Analytics Employee Attrition Project**
In this project, we will explore a fictional dataset and perform a comprehensive machine learning analysis using various machine learning models. We will evaluate the models' performance in predicting whether an employee will leave their current employer, and we will also analyze which features have the greatest impact on an employee's decision to leave.

## Dataset
Data Source: https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset

Source Format: **_csv_**

Dependent Variable : **_Attrition_** - (Boolean Y/N)

Independent Variable(s): **_35_** (e.g. basic info, work Info, satisfaction, salary and time related)

## Project Content
1. *Exploring Data*
2. *Distribution of the dataset*
3. *Feature engineering*
4. *Data Scaling*
5. *Model training and performance evaluation*
6. *Data Augmentation*
7. *Feature importance*

## 1. Exploring Data
Data exploration is a critical step in any machine learning project, as it allows us to gain a thorough understanding of the dataset and its features. This includes identifying both numerical and non-numerical data, as well as checking for missing or duplicate values. By carefully examining all of the available features, we can ensure that we use only the most meaningful and relevant ones in our models. Conducting a thorough data exploration helps us make informed decisions and improve the performance of our machine learning models.

**The EDA process:**
1. Read the CSV file and perform initial statistical analysis to understand the shape and values of the data
2. Preprocess the data by identifying and removing any columns that are not relevant to our analysis to reduce noise and improve the performance of our model
3. Write the cleaned data into a SQL database to store the preprocessed data, which we will use for further analysis

~~~~python
df = df.drop(['Over18','EmployeeNumber', 'EmployeeCount', 'StandardHours'], axis = 1)
print(df.shape)
df.head()
~~~~

## 2. Distribution of the dataset
All of our numerical features have been preprocessed to remove missing or duplicate data. As a result, the distribution of these features is consistent.

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/Age_distribution.png)

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/dataset_distribution.png)

## 3. Feature engineering
We used a correlation matrix to identify relationships between the features and the target variable. We considered two features to be correlated if their correlation score was greater than 0.5. 
For non-numerical features, we applied one-hot encoding to convert them into numerical values.

**Correlation Matrix:**

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/correlation_heatmap.png)

## 4. Data Scaling
As a first step, we will apply a set of pre-selected models to the data without performing any hyperparameter tuning. This "naive" approach will allow us to get a rough idea of the performance of each model. The models we will use include linear models, tree-based models, ensemble learning models, and deep learning models.

**Model Training:**

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/ML_performance.png)

## 5. Model training and performance evaluation
There are different metrics that can be used to evaluate the performance of a model. In this project, we are trying to solve a classification problem, so we will use accuracy as one of our evaluation metrics. However, for imbalanced data, accuracy alone may not be sufficient. In such cases, we need to pay more attention to metrics like precision and recall. For example, if we only have one employee who exits in our dataset, and we predict that everyone will stay, we will have a model with 99% accuracy, but it will not be able to help us identify the employee who plans to exit. Therefore, we will use precision, recall, and f1 score as our primary evaluation metrics, and we will use confusion matrix graphs with labels of actual and predicted values to visualize the results.

**Confusion Matrix:**

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/Confusion%20Matrix.png)

**ROC Curve Analysis:**
Another metric we can use to evaluate the performance of a model is ROC (receiver operating characteristic) analysis. This metric measures how well the model is able to distinguish between true and false labels.

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/ROC_curve_analysis.png)

## 6. Data Augmentation


**Imbalanced Data:**

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/imbalanced_data.png)

**balanced Data:**

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/imbalanced_data.png)

## 7. Feature importance
The feature importance shows how important each feature is and the way it can change the performance of the ML model.

![cm_lr](https://github.com/dalemunroe/project-4_group-2/blob/main/outputs/feature_importance.png)
