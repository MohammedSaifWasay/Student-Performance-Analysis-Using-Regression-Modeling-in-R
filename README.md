# 📊 Student Performance Analysis Using Regression Modeling in R

This project focuses on analyzing a student performance dataset to uncover the relationships between academic success (`performance_index`) and key lifestyle factors such as study time, sleep hours, prior scores, and practice with sample papers. Using statistical modeling and data visualization techniques in R, we assess how these variables influence academic outcomes and construct a multiple linear regression model to quantify these effects.

---

## 📁 Dataset Overview

The dataset includes the following six variables:

- `hours_studied` – Number of hours spent studying  
- `previous_scores` – Prior academic score  
- `extracurricular_activities` – Participation (categorical, not used in regression)  
- `sleep_hours` – Number of hours slept  
- `sample_question_papers_practiced` – Number of sample papers practiced  
- `performance_index` – Target/dependent variable

---

## 🧼 Data Preparation and Cleaning

- Loaded and inspected the dataset in R.
- Checked and removed null values.
- Selected only numeric variables for regression modeling.
- Subsetted the data for numeric analysis.

---

## 🔍 Exploratory Data Analysis (EDA)

### 🔗 Correlation Analysis

- Generated a **correlation matrix** and **heatmap** to evaluate linear relationships.
- Found:
  - **Strong correlation** between `previous_scores` and `performance_index` (r ≈ 0.92)
  - **Moderate correlation** between `hours_studied` and `performance_index` (r ≈ 0.37)
  - **Weak but significant correlation** for `sleep_hours` and `sample_question_papers_practiced` with performance

---

## 🧪 Correlation Hypothesis Testing

| Variable                          | Correlation (r) | p-value       | Interpretation                                |
|----------------------------------|------------------|---------------|-----------------------------------------------|
| Hours Studied                    | 0.3737           | < 2.2e-16     | Moderate significant positive correlation     |
| Sleep Hours                      | 0.0481           | 1.49e-06      | Very weak but statistically significant       |
| Previous Scores                  | 0.9152           | < 2.2e-16     | Very strong positive relationship             |

---

## 📈 Multiple Linear Regression Model

A linear regression model was built to predict `performance_index` using:

- `hours_studied`
- `sleep_hours`
- `previous_scores`
- `sample_question_papers_practiced`

### 🔢 Model Summary

- **Intercept:** 36.56
- **R-squared:** 0.9111
- **Adjusted R-squared:** ≈ 0.9110
- **F-statistic:** ~102,400 (very significant)
- **Residual Standard Error:** ~5.33

### 📉 Interpretation

- The model explains **91.11%** of the variation in performance index.
- All predictors are statistically significant.
- `previous_scores` had the highest impact on performance, followed by `hours_studied`.

---

## 📊 Visualizations

- Correlation Heatmap  
- Scatter plots with regression lines for:
  - `previous_scores` vs `performance_index`
  - `hours_studied` vs `performance_index`
  - All numeric predictors combined vs performance

---

## 🧠 Conclusion

- Strong statistical evidence shows that **previous academic performance** and **study hours** are key indicators of academic success.
- While `sleep_hours` and `sample_papers` show weaker correlations, they still contribute positively.
- The regression model demonstrates excellent fit (R² > 0.91), making it suitable for academic performance prediction.

---

## 📚 Citations

- R Documentation, *An Introduction to R*.  
  Retrieved December 12, 2023 from: [https://cran.r-project.org/doc/manuals/r-release/R-intro.html](https://cran.r-project.org/doc/manuals/r-release/R-intro.html)  

- Turney, S. (2022). *Coefficient of Determination (R²)*  
  Retrieved from: [https://www.scribbr.com/statistics/coefficient-of-determination/](https://www.scribbr.com/statistics/coefficient-of-determination/)

---

## 🧠 Author  
**Mohammed Saif Wasay**  
*Data Analytics Graduate – Northeastern University*  
*Machine Learning Enthusiast | Passionate about turning data into insights*

🔗 [Connect with me on LinkedIn](https://www.linkedin.com/in/mohammed-saif-wasay-4b3b64199/)
