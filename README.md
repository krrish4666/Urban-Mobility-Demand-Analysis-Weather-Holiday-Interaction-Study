# Urban Mobility Demand Analysis – Weather & Holiday Interaction Study

## 📌 Overview

This project analyzes how external factors such as weather conditions and public holidays influence urban taxi demand in New York City.

Using 12M+ taxi trip records, this study integrates weather and holiday datasets to quantify demand drivers and uncover interaction effects between environmental and calendar-based factors.

The analysis is presented through a structured Python pipeline, SQL validation layer, and an interactive Power BI dashboard.

---

## 🎯 Problem Statement

Urban mobility demand fluctuates due to external factors like weather and public holidays. 

This project aims to answer:

- Does rain significantly reduce taxi demand?
- Do public holidays suppress mobility?
- Is temperature linearly related to demand?
- Do combined weather + holiday effects amplify suppression?
- What are peak and low-demand periods?

---

## 📊 Dataset Overview

- **12M+ NYC taxi trip records (January 2015)**
- Hourly weather dataset (temperature, humidity, conditions)
- US public holiday dataset
- Data aggregated to daily analytical level for impact evaluation

> Scope: Winter case study (January 2015)

---

## 🛠 Tools & Technologies

- **Python** (Pandas, NumPy, Matplotlib, Scikit-learn)
- **MySQL** (Aggregation & validation queries)
- **Power BI** (Interactive dashboard)
- **GitHub** (Version control & documentation)

---

## 🔎 Methodology

### 1️⃣ Data Cleaning & Validation
- Removed corrupted and negative financial entries
- Applied spatial filtering to NYC boundaries
- Validated trip distance and fare outliers

### 2️⃣ Feature Engineering
- Daily aggregation of trip demand
- Rain indicator flag
- Holiday indicator flag
- Temperature and humidity integration

### 3️⃣ SQL Validation Layer
- Rain vs No Rain demand comparison
- Holiday vs Normal day comparison
- Combined interaction analysis
- Hourly demand profiling

### 4️⃣ Dashboard Development
- Executive KPI overview
- Weather & holiday interaction analysis
- Temperature impact visualization
- Drill-through segment analysis

---

## 📈 Key Insights

- **Average Daily Demand:** ~408K trips
- **Rain Impact:** ~4.7% demand reduction
- **Holiday Impact:** ~12.6% demand reduction
- **Combined Effect:** Holiday + Rain produces strongest suppression
- **Temperature Effect:** Weak linear relationship within winter range (-10°C to 5°C)
- **Extreme Weather:** Significant demand suppression during severe events

---

## 📊 Dashboard Highlights

### Executive Overview
- KPI Cards (Avg Trips, Rain %, Holiday %)
- Daily demand trend
- Interactive filtering

### Deep Dive
- Holiday & Rain interaction matrix
- Segment-specific demand analysis
- Temperature vs Demand scatter with regression trend

---
## 📊 Dashboard Preview

    ![Executive Overview]
    <img width="1119" height="625" alt="1  Executive Overview" src="https://github.com/user-attachments/assets/a1835414-b00c-451e-9ce5-5f32ec98abf9" />

    ![Deep Dive]
    <img width="1117" height="627" alt="2  Deep Dive" src="https://github.com/user-attachments/assets/9d9c14e9-eecf-40ff-9774-c69ceda055a2" />

## ⚠ Limitations

- January-only dataset (winter scope)
- Limited holiday sample size (2 holidays)
- Seasonal temperature variation not captured
- Full-year elasticity modeling recommended

---

## 🚀 Future Improvements

- Extend analysis to full-year dataset
- Add seasonal demand elasticity modeling
- Incorporate congestion and traffic variables
- Implement predictive demand modeling layer
- Add anomaly detection for extreme weather events

---

## 📁 Repository Structure
    urban-mobility-demand-analysis/
    │
    ├── data/
    ├── notebooks/
    ├── sql/
    ├── powerbi/
    ├── images/
    └── README.md


---

## 💡 Business Relevance

This analysis demonstrates how external environmental and calendar factors influence urban mobility demand, enabling:

- Better fleet allocation planning
- Holiday staffing optimization
- Weather-adjusted demand forecasting
- Data-driven mobility operations

---

## 📌 Author

Krishna Yadav   
Data Analytics & Machine Learning Enthusiast
