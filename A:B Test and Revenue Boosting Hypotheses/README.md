# A/B Testing

# Revenue Boosting Hypotheses and A/B Test Analysis


### Description of the Problem:
Project Description:
In this project, we aim to help an online store maximize its revenue potential by first prioritizing hypotheses for revenue enhancement using the ICE and RICE frameworks. Next, we analyze the results of an A/B test to make data-driven decisions that can further boost revenue. Key analyses include: Cumulative Revenue Analysis, Cumulative Average Order Size Analysis, Relative Difference in Cumulative Average Order Size, Conversion Rate Analysis, User Behavior Analysis, and Statistical Significance Testing.

###Project Goals:
- Prioritize hypotheses for revenue enhancement using the ICE and RICE frameworks.
- Analyze the A/B test results to gain insights into revenue performance.
- Make informed decisions based on the test results to drive revenue growth for the online store.

### Tools and Libraries:
-	Python: Use Python programming language for data cleaning, manipulation, and analysis.
-	Pandas: Manipulate and preprocess the data efficiently.
-	Matplotlib, Plotly: Create visualizations and charts for data exploration and presentation.
-  Scikit-Learn (Sklearn): Model training, evaluation, and selection.
-  Numpy: Utilize NumPy for numerical computations and array manipulation.
-  Scipy.stats: Apply SciPy's statistical functions for advanced data analysis and hypothesis testing.

### Data Documentation:

Data used in the first part of the project (`hypotheses_us.csv`):
`'Hypotheses'`— brief descriptions of the hypotheses
`'Reach'` — user reach, on a scale of one to ten
`'Impact'` — impact on users, on a scale of one to ten
`'Confidence'` — confidence in the hypothesis, on a scale of one to ten
`'Effort'` — the resources required to test a hypothesis, on a scale of one to ten. The higher the Effort value, the more resource-intensive the test.

Data used in the second part of the project:
`orders_us.csv`:
`'transactionId'` — order identifier
`'visitorId'` — identifier of the user who placed the order
`'date'` — of the order
`'revenue'` — from the order
`'group'` — the A/B test group that the user belongs to

`visits_us.csv`:
`'date'` — date
`'group'` — A/B test group
`'visits'` — the number of visits on the date specified in the A/B test group specified

### Workbook Preview: