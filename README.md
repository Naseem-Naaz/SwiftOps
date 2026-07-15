# 📦 SwiftOps – Smart Operations & Decision Intelligence System

> An end-to-end Supply Chain Analytics and Demand Forecasting platform built using **Python, SQL, Power BI, and Machine Learning**.

![Python](https://img.shields.io/badge/Python-3.12-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Machine Learning](https://img.shields.io/badge/Machine-Learning-green)
![Status](https://img.shields.io/badge/Project-Completed-success)

---

# 📌 Project Overview

SwiftOps is a smart supply chain analytics platform designed to simulate and optimize warehouse operations, inventory management, logistics, and sales performance.

The project integrates **Data Engineering, Business Intelligence, and Machine Learning** into one complete workflow.

The system generates realistic supply chain data, stores it in a relational database, visualizes business KPIs in Power BI, and predicts future product demand using machine learning models.

---

# 🚀 Features

### 📊 Business Intelligence

- Executive Dashboard
- Sales Performance Dashboard
- Supply Chain Dashboard
- Inventory Dashboard
- Logistics Dashboard
- Profitability Analysis
- Warehouse Performance
- Product Performance
- Customer Insights

---

### 📦 Supply Chain Management

- Warehouse Management
- Inventory Tracking
- Supplier Management
- Route Optimization
- Fleet Operations
- Employee Operations
- Product Management

---

### 🤖 Machine Learning

- Demand Forecasting
- Feature Engineering
- Inventory Optimization
- Forecast Accuracy Evaluation
- Model Comparison
- Future Demand Prediction

---

# 🏗 Project Architecture

```
Python Data Generator
        │
        ▼
 Synthetic Dataset
        │
        ▼
    MySQL Database
        │
        ▼
   SQL Star Schema
        │
        ▼
     Power BI
        │
        ▼
 Machine Learning Models
        │
        ▼
 Demand Forecasting
```

---

# 🛠 Technology Stack

| Technology | Purpose |
|------------|----------|
| Python | Data Generation & ML |
| Pandas | Data Processing |
| NumPy | Numerical Computing |
| Scikit-Learn | Machine Learning |
| XGBoost | Forecasting |
| MySQL | Data Warehouse |
| SQL | Data Analysis |
| Power BI | Dashboard & Visualization |
| Git | Version Control |
| GitHub | Repository |

---

# 📂 Project Structure

```
SwiftOps/

│
├── Data/
│   ├── Master Tables
│   ├── Fact_Operations.csv
│   ├── Demand_Forecasting_Dataset.csv
│
├── Python/
│   ├── data_generator.py
│   ├── feature_engineering.py
│   ├── demand_forecasting.ipynb
│   ├── inventory_optimization.ipynb
│
├── SQL/
│   ├── schema.sql
│   ├── star_schema.sql
│   ├── analytical_queries.sql
│
├── PowerBI/
│   ├── SwiftOps.pbix
│
├── Models/
│   ├── Demand_Forecasting_Model.pkl
│
├── Images/
│
└── README.md
```

---

# 📊 Database Design

The project follows a **Star Schema**.

### Fact Table

- Fact_Operations

### Dimension Tables

- Calendar
- Customer
- Product
- Warehouse
- Supplier
- Vehicle
- Route
- Employee

---

# 📈 Dashboard KPIs

- Total Revenue
- Total Profit
- Profit Margin
- Sales Growth
- Revenue Growth
- Inventory Turnover
- Fill Rate
- Return Rate
- Forecast Accuracy
- Transportation Cost
- Warehouse Utilization
- On-Time Delivery
- Customer Performance

---

# 🤖 Machine Learning Pipeline

### Data Preparation

- Data Cleaning
- Missing Value Handling
- Feature Engineering
- Time-Series Features

### Feature Engineering

- Lag 1
- Lag 7
- Lag 30
- Rolling Mean 7
- Rolling Mean 30
- Demand Growth
- Seasonal Features
- Calendar Features

### Models Evaluated

- Linear Regression
- Decision Tree
- Random Forest
- Gradient Boosting
- XGBoost

---

# 📊 Model Performance

| Model | MAE | RMSE | MAPE | R² Score |
|--------|------|-------|-------|---------|
| Linear Regression | 185.37 | 333.53 | 177.31% | 0.9032 |
| Decision Tree | 73.49 | 172.32 | 13.61% | 0.9742 |
| Random Forest | **53.07** | 138.28 | **8.64%** | 0.9834 |
| Gradient Boosting | 67.97 | **130.28** | 39.54% | **0.9852** |

> Random Forest achieved the best overall balance between prediction accuracy and generalization.

---

# 📁 Dataset Information

### Records

- 30,000+ Transactions

### Master Tables

- Calendar
- Product
- Customer
- Supplier
- Warehouse
- Vehicle
- Employee
- Route

### Features

- 60+ Operational Features
- Demand Forecasting Features
- Inventory Features
- Financial Features
- Logistics Features

---

# 📊 Machine Learning Features

### Time Features

- Year
- Month
- Week
- Quarter
- Day
- Weekend

### Demand Features

- Lag_1
- Lag_7
- Lag_30
- Rolling_7
- Rolling_30
- Demand_Growth

### Business Features

- Season
- Festival
- Sales Multiplier
- Product Category
- Brand

---

# 📷 Dashboard Preview

> Add screenshots of your Power BI dashboards here.

Example:

```
Images/
    ExecutiveDashboard.png
    SalesDashboard.png
    InventoryDashboard.png
```

---

# ⚙ Installation

Clone the repository

```bash
git clone https://github.com/yourusername/SwiftOps.git
```

Navigate to the project

```bash
cd SwiftOps
```

Install dependencies

```bash
pip install -r requirements.txt
```

Run Jupyter Notebook

```bash
jupyter notebook
```

---

# 📌 Future Enhancements

- Deep Learning (LSTM Forecasting)
- Real-Time Data Streaming
- FastAPI Deployment
- Docker Containerization
- Cloud Deployment (AWS/Azure)
- Inventory Optimization Engine
- Route Optimization using AI
- Supplier Recommendation System

---

# 🎯 Learning Outcomes

This project demonstrates practical experience in:

- Data Engineering
- Database Design
- SQL Development
- Business Intelligence
- Feature Engineering
- Machine Learning
- Demand Forecasting
- Supply Chain Analytics
- Data Visualization
- End-to-End Analytics Pipeline

---

# 👨‍💻 Author

**Naseem Naaz**

**Data Science | Machine Learning | Business Intelligence**

GitHub: https://github.com/yourusername

LinkedIn: https://linkedin.com/in/yourprofile

---

# ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub.
