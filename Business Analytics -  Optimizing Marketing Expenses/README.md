# Business Analytics

# Optimizing Marketing Expenses for Yandex.Afisha


### Description of the Project:
As an analyst at Yandex.Afisha, we should optimize marketing expenses to maximize revenue. We have access to valuable data sources, including server logs for user visits, order data, and marketing expense statistics for the period from June 2017 through May 2018. Key analyses include:  User Behavior Analyses, Sales Data Analyses, Marketing Expenses Analyses.

###Project Goal:
The primary goal of this project is to gain insights into user behavior, conversion patterns, and the effectiveness of marketing channels to provide actionable insights to Yandex.Afisha's marketing department, enabling them to optimize marketing expenses effectively. 

### Tools and Libraries:
-	Python: Use Python programming language for data cleaning, manipulation, and analysis.
-	Pandas: Manipulate and preprocess the data efficiently.
-	Matplotlib, Seaborn, Plotly: Create visualizations and charts for data exploration and presentation.
-   Numpy: Utilize NumPy for numerical computations and array manipulation.

### Data Documentation:

The `visits` table (server logs with data on website visits):
`'Uid'` — user's unique identifier
`'Device'` — user's device
`'Start Ts'` — session start date and time
`'End Ts'` — session end date and time
`'Source Id'` — identifier of the ad source the user came from
All dates in this table are in YYYY-MM-DD format.

The `orders` table (data on orders):
`'Uid '`— unique identifier of the user making an order
`'Buy Ts'` — order date and time
`'Revenue'` — Yandex.Afisha's revenue from the order

The `costs` table (data on marketing expenses):
`'source_id '`— ad source identifier
`'dt '`— date
`'costs'` — expenses on this ad source on this day

### Workbook Preview: