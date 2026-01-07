Ola Ride Insights – Data Analytics Project
 Project Overview-
This project analyzes ride-sharing data from OLA to uncover insights related to booking trends, revenue, cancellations, and customer/driver behavior.
The goal is to support data-driven decision making using Python, SQL, and Power BI.
Tools & Technologies Used

Python (VS Code)

Pandas, NumPy

SQL (for analytical queries)

Power BI (interactive dashboards)

GitHub (project version control)
Dataset

Source: OLA Ride Dataset

Records: 103,000+ rides

Key Columns:
Booking_ID, Booking_Status, Vehicle_Type, Ride_Distance,
Booking_Value, Payment_Method, Driver_Ratings, Customer_Rating, Date, Time
Data Cleaning & Preprocessing (Python)

Performed using Python in VS Code:

Removed unnecessary columns

Renamed and fixed the Date column

Created a combined Booking_Datetime field

Handled missing and null values

Exported cleaned dataset for SQL and Power BI
SQL Analysis

SQL queries were written to:

Retrieve successful bookings

Analyze cancellations (customer & driver)

Identify top customers

Calculate total and average booking values

Analyze ratings and payment methods

SQL scripts are included in the repository.
Power BI Dashboard

Created an interactive Power BI dashboard with the following views:

🔹 Overall

Ride Volume Over Time

Booking Status Distribution

🔹 Vehicle Type

Top 5 Vehicle Types by Ride Distance

🔹 Revenue

Total Revenue by Booking Status

Revenue by Payment Method

🔹 Ratings

Average Booking Value by Driver Ratings

Customer vs Driver Ratings
Key Insights

Successful bookings contribute the majority of revenue

Certain vehicle types dominate ride distance

Higher driver ratings are associated with higher booking values

Cancellation reasons impact revenue loss
Project Outcome

Cleaned and structured dataset

SQL-based business insights

Interactive Power BI dashboard

End-to-end analytics workflow completed
How to Use

Review Python scripts for data cleaning

Run SQL queries for analysis

Open Power BI file to explore dashboards
Author

Chirashree
Data Analytics Project – Ola Ride Insights

