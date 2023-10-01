# Exploring and Cleaning Data with Pandas

# Customer Behavior and Product Analysis


### Description of the Project:
Instacart is a grocery delivery platform where customers can place a grocery order and have it delivered to them, similar to how Uber Eats and Door Dash work. This particular dataset was publicly released by Instacart in 2017 for a Kaggle competition. Although the original dataset is no longer available on the Instacart website, new  CSV files were created. They contain a modified version of that data. The dataset has been modified from the original. The size of the dataset was redused so that calculations run faster. Also, missing and duplicate values were introduced. 
This project aims to provide valuable insights into customer behavior, ordering patterns, and popular products on the Instacart platform, ultimately helping optimize marketing strategies and improve the overall customer experience.

### Project Goal:
The goal of the project is to clean up the data and prepare a report that gives insight into the shopping habits of Instacart customers. 

### Tools and Libraries:
-	Python: Use Python programming language for data cleaning, manipulation, and analysis.
-	Pandas: Manipulate and preprocess the data efficiently.
-	Matplotlib: Create visualizations and charts for data exploration and presentation.
-   Numpy: Utilize NumPy for numerical computations and array manipulation.

### Data Documentation:

 `instacart_orders.csv`: each row corresponds to one order on the Instacart app
- `'order_id'`: ID number that uniquely identifies each order
- `'user_id'`: ID number that uniquely identifies each customer account
- `'order_number'`: the number of times this customer has placed an order
- `'order_dow'`: day of the week that the order placed (which day is 0 is uncertain)
- `'order_hour_of_day'`: hour of the day that the order was placed
- `'days_since_prior_order'`: number of days since this customer placed their previous order

`products.csv`: each row corresponds to a unique product that customers can buy
- `'product_id'`: ID number that uniquely identifies each product
- `'product_name'`: name of the product
- `'aisle_id'`: ID number that uniquely identifies each grocery aisle category
- `'department_id'`: ID number that uniquely identifies each grocery department category

`order_products.csv`: each row corresponds to one item placed in an order
- `'order_id'`: ID number that uniquely identifies each order
- `'product_id'`: ID number that uniquely identifies each product
- `'add_to_cart_order'`: the sequential order in which each item was placed in the cart
- `'reordered'`: 0 if the customer has never ordered this product before, 1 if they have

`aisles.csv`:
- `'aisle_id'`: ID number that uniquely identifies each grocery aisle category
- `'aisle'`: name of the aisle

`departments.csv`:
- `'department_id'`: ID number that uniquely identifies each grocery department category
- `'department'`: name of the department

### Workbook Preview:
