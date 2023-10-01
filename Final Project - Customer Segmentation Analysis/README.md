# TripleTen Final Project

# Customer Analysis - Segmentation of Customers for AtliQ Hardware


### Description of the Problem:
AtliQ Hardware is one of the leading computer hardware producers in India, and has even expanded into other countries as well. They sell different types of hardware to big players such as Amazon, Best Buy, and Walmart.
This year, they're asking PWC to conduct a big audit of their sales and help them automate their existing data.
The clients are particularly interested in three business areas:
- Financial Analysis: Revenue/Profits/Margin Change Research How have revenue/profits changed over time? How has the market shifted? What categories are most profitable?…
- Product Analysis Which items are the bestsellers? How can the company improve its sales? How has popularity changed over time/across markets?…
- Customer Analysis Segmentation of customers: who are they and what do they buy? How can we improve business with them?…

### Customer Analysis:
Considering the nature of AtliQ Hardware's business and the potential for improving their overall performance and sales, I believe the very important analysis to focus on is "Customer Analysis - Segmentation of Customers." Understanding the customer base and their buying behavior is crucial for tailoring marketing strategies, optimizing product offerings, and improving customer satisfaction, which can ultimately lead to increased revenue and profits.

### Project Goal:
The primary goal of this project is to conduct a comprehensive customer analysis for AtliQ Hardware, with the aim of gaining valuable insights into customer behavior, preferences, and purchasing patterns. By achieving this goal, the project aims to achieve the following objectives:
1. Identify and define primary customer segments based on platform, channel, and region.
2. Analyze and compare customer segments in terms of their purchase frequency, value, revenue contribution, and profitability.
3. Determine the characteristics of high-value customers and provide recommendations to enhance business relationships with them.
4. Explore the evolution of customer purchasing behavior over time and across different markets.
5. Identify the most popular product categories among different customer segments.
6. Investigate the key factors influencing customer loyalty, repeat purchases, and retention for each customer segment.
7. Evaluate the revenue contribution of each customer segment to the overall business.
8. Identify untapped customer segments with growth potential and recommend strategies for business expansion.
9. Identify specific customer segments with high growth potential that the company can target for business expansion.

### Tools and Libraries:
-	Python: Use Python programming language for data cleaning, manipulation, and analysis.
-	SQL: Connect to the database and retrieve relevant data for analysis.
-	Pandas: Manipulate and preprocess the data efficiently.
-	Matplotlib, Seaborn, Plotly: Create visualizations and charts for data exploration and presentation.
-	Tableaus: Create dashboard.

### Database Documentation
Please find the description of all of the tables in the database below.
dim_customer -contains customer-related data
column	column description	parameters	dtype	connections with other tables	Note
customer_code	unique identifier of Customer. Is assigned depending on platform, channel and market	Ex: 90026205	int64	1. fact_pre_discount (dim_customer.customer_code=fact_pre_discount.customer_code)
2. fact_sales_monthly (dim_customer.customer_code=fact_sales_monthly.customer_code)	One customer can have several customer_codes, since code is assigned to a customer based on the customer name, platform, channel and region
customer	Company name of the customer	Ex: ‘Amazon ’	string		
platform	platform, through which the sale’s been done	2 values:
'Brick & Mortar'
'E-Commerce'	string		customer should have one platform
channel	channel of sale	3 values:
'Direct',
'Distributor'
'Retailer'	string		customer may have several channels
market	Country of the customer’s office	Ex: ‘Japan’	string		
sub_zone	Abbreviation of the Region	Ex: ‘LATAM’	string		For one market there should be one sub_zone
region	Region of the customer’s office	Ex: ‘ EU’	string		For one market there should be one region
dim_product -contains product-related data
column	column description	parameters	dtype	connections with other tables	Note
product_code	unique identifier of product.	Ex: A0118150101	string	1.fact_manufacturing_cost
(dim_product.product_code=fact_manufacturing_cost.product_code)
2. fact_gross_price (fact_gross_price.product_code=dim_product.product_code)
3.fact_sales_monthly (fact_sales_monthly.product_code=dim_product.product_code)	One customer can have several customer_codes, since code is assigned to a customer based on the customer name, platform, channel and region
division	Group of the product	3 values:
'P & A' - Peripherals and Accessories
'PC' - type of computer
'N & S' - Networking and Storage	string		
segment	type of product ( sub-division)	6 values:
'Peripherals', 'Accessories', 'Notebook', 'Desktop',
'Storage',
'Networking'	string		
category	category of the product	Ex: ‘Keyboard’	string		
product	Full product name	Ex: ‘AQ MB Elite’	string		
variant	variant of the product	Ex: ‘Standard Grey’	string		
fact_pre_discount -contains pre-invoice deductions information for each product
column	column description	parameters	dtype	connections with other tables	Note
customer_code	unique identifier of Customer	Ex: 90026205	int64	1.dim_customer (dim_customer.customer_code=fact_pre_discount.customer_code)
2. fact_sales_monthly (fact_sales_monthly.customer_code=fact_pre_discount.customer_code)	
fiscal_year	Year when the discount was valid	Ex: 2018	int64		
pre_invoice_discount_pct	discount % per invoice for specific customer	Ex: 0.0824	float64		
fact_manufacturing_cost -contains the cost incurred in the production of each product
column	column description	parameters	dtype	connections with other tables	Note
product_code	unique identifier of product.	Ex: A0118150101	int64	1. dim_product (dim_product.product_code=fact_manufacturing_cost.product_code)
2. fact_gross_price (fact_manufacturing_cost.product_code=fact_gross_price.product_code)
3.fact_sales_monthly (fact_sales_monthly.product_code=fact_manufacturing_cost.product_code)	
cost_year	Year of production	Ex: 2018	int64		
manufacturing_cost	cost of production of unit of product	Ex: 5.6036	float64		
fact_gross_price -contains gross price information for each product
column	column description	parameters	dtype	connections with other tables	Note
product_code	unique identifier of product.	Ex: A0118150101	int64	1. dim_product (dim_product.product_code=fact_gross_price.product_code)
2. fact_manufacturing_cost (fact_manufacturing_cost.product_code=fact_gross_price.product_code)
3.fact_sales_monthly (fact_sales_monthly.product_code=fact_gross_price.product_code)	
fiscal_year	Year of transaction	Ex: 2018	int64		
gross_price	Final price for the product	Ex: 15.3952	float64		
fact_sales_monthly -contains monthly sales data for each product.
column	column description	parameters	dtype	connections with other tables	Note
date	Date of transaction		str		
product_code	unique identifier of product.	Ex: A0118150101	str	1. dim_product (dim_product.product_code=fact_sales_monthly.product_code)
2. fact_manufacturing_cost (fact_manufacturing_cost.product_code=fact_sales_monthly.product_code)
3. fact_gross_price (fact_sales_monthly.product_code=fact_gross_price.product_code)	
customer_code	unique identifier of Customer	Ex: 90026205	float64	1.fact_pre_discount (fact_sales_monthly.customer_code=fact_pre_discount.customer_code)
2. dim_customer (dim_customer.customer_code=fact_sales_monthly.customer_code)	
sold_quantity	sold items to customer on that date	Ex: 51.0	float64		
fiscal_year	Year of transaction	Ex: 2018	float64		

### Workbook Preview:






