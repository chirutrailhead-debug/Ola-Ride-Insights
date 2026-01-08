import streamlit as st
import pandas as pd

st.title("Ola Ride Insights")

# Load data
df = pd.read_csv("OLA_Cleaned_Data.csv")

st.write("Data loaded successfully")

col1, col2 = st.columns(2)

col1.metric(
    label="Total Bookings",
    value=len(df)
)

col2.metric(
    label="Total Revenue",
    value=f"₹ {df['Booking_Value'].sum():,.0f}"
)



st.dataframe(df.head())
