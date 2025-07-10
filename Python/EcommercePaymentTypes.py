#!/usr/bin/env python
# coding: utf-8

# Load pandas library

# In[1]:


import pandas as pd


# Load numpy library

# In[2]:


import numpy as np


# Load matplot library

# In[3]:


import matplotlib as mpl


# Load/alias pyplot submodule

# In[4]:


import matplotlib.pyplot as plt


# Import Customer Details table from csv

# In[5]:


df = pd.read_csv('C:/Datasets/Kaggle/E-CommerceSalesData2024/customer_details.csv')


# Confirm import

# In[6]:


print(df)


# Check column data types for possible conversion if necessary

# In[7]:


# Get the data types of all columns
column_data_types = df.dtypes

# Print the Series containing column data types
print(column_data_types)


# Create series with counts of unique payment methods 

# In[8]:


payment_counts = df['Payment Method'].value_counts()


# In[9]:


print(payment_counts)


# In[10]:


print(payment_counts.index)


# Convert payment counts index to list and check ouput

# In[11]:


paymenttypes_index_as_list = payment_counts.index.tolist()
print(paymenttypes_index_as_list)


# Check outputs of payment method count values

# In[12]:


print(payment_counts.values)


# Plot payment methods as bar chart

# In[13]:


# Create the bar chart
plt.bar(paymenttypes_index_as_list, payment_counts.values, color='green')

# Add labels and title
plt.xlabel('Payment Types')
plt.ylabel('Number of Purchases')
plt.title('Payment Methods')

# Display the chart
plt.show()


# Plot payment types as pie chart

# In[14]:


plt.pie(x = payment_counts.values, labels = paymenttypes_index_as_list, autopct='%1.1f%%')
plt.title('Payment Methods')
plt.show()


# In[ ]:




