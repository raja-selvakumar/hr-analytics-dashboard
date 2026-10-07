# hr-analytics-dashboard
# HR Analytics — Employee Attrition Analysis

## 📌 Project Overview

This **HR Analytics** project analyzes employee data to understand workforce composition, employee attrition, salary patterns, job satisfaction, job-role turnover, and workload impact.

The project follows a complete end-to-end data analytics workflow:

**Python → Data Cleaning → PostgreSQL → SQL Analysis → Power BI Dashboard → Report → Presentation**

The primary objective is to transform raw HR data into meaningful business insights that can help organizations identify **attrition drivers and improve employee retention**.

---

## 🎯 Project Objectives

- Analyze total employee headcount and attrition.
- Calculate and understand the overall attrition rate.
- Identify departments with the highest employee turnover.
- Analyze attrition across salary slabs.
- Understand workforce distribution by age group.
- Identify job roles with the highest attrition.
- Analyze the relationship between job satisfaction and attrition.
- Investigate the impact of overtime on employee turnover.
- Clean and preprocess HR data using Python.
- Perform structured analysis using PostgreSQL and SQL.
- Build an interactive Power BI dashboard.
- Generate business recommendations from analytical findings.

---

## 📊 Dataset

The original HR dataset contains:

- **1,470 employee records**
- **37 feature columns**

The dataset includes information related to:

- Employee demographics
- Department
- Job role
- Salary
- Years of experience
- Job satisfaction
- Overtime
- Employee status
- Attrition

### Data Cleaning Summary

| Metric | Value |
|---|---:|
| Initial Records | 1,470 |
| Feature Columns | 37 |
| Duplicate Employee Records | 6 |
| Records After Cleaning | 1,464 |
| Clean Dataset | `hr_01.csv` |

Six duplicate employee records were identified using `EmpID` and removed before reporting.

---

# 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| **Python** | Data cleaning and preprocessing |
| **Pandas** | Data manipulation |
| **Jupyter Notebook** | Data analysis workflow |
| **PostgreSQL** | Database storage |
| **SQL** | Business analytics |
| **Power BI** | Interactive dashboard |
| **Gamma** | Presentation creation |
| **CSV** | Data storage and exchange |

---

# 🔄 Project Workflow

```text
Raw HR Dataset
      ↓
Python Data Loading
      ↓
Data Quality Check
      ↓
Missing Value Handling
      ↓
Duplicate Removal
      ↓
Clean Dataset (hr_01.csv)
      ↓
PostgreSQL Database
      ↓
SQL Business Analysis
      ↓
Power BI Dashboard
      ↓
Business Insights
      ↓
Report & Presentation
```

---

# 🐍 Python Data Cleaning & Preprocessing

The Python workflow was performed in:

```text
hr_python_code.ipynb
```

## 1. Dataset Shape Verification

The initial dataset was checked for its number of rows and columns.

```text
1,470 rows × 37 columns
```

Additional checks included:

- Column names
- Data types
- Missing values
- Duplicate employee IDs
- Data consistency

---

## 2. Missing Value Handling

Missing values were identified across the dataset.

Columns such as:

```text
YearsWithCurrManager
```

were reviewed and missing values were handled appropriately before analysis.

---

## 3. Duplicate Detection

Employee IDs were checked for duplicate records.

Six duplicate records were identified.

Duplicates were removed using:

```python
df.drop_duplicates(subset=['EmpID'], keep='first')
```

After cleaning:

```text
1,464 unique employee records
```

---

## 4. Clean Dataset Export

The cleaned dataset was exported as:

```text
hr_01.csv
```

This file was then used for PostgreSQL and Power BI analysis.

---

# 🗄️ PostgreSQL & SQL Analysis

The cleaned HR dataset was loaded into **PostgreSQL** for structured business analysis.

SQL queries were used to analyze:

- Total employee headcount
- Attrition count
- Department-wise attrition
- Job-role attrition
- Job satisfaction
- Salary slabs
- Overtime
- Employee experience
- Workforce distribution

SQL results were also compared with Python and Power BI findings to validate the analysis.

---

# 📈 Power BI Dashboard

The Power BI dashboard provides an interactive overview of employee attrition and workforce characteristics.

## KPI Cards

| KPI | Value |
|---|---:|
| Total Employees | **1,464** |
| Active Employees | **1,464** |
| Attrition Count | **235** |
| Attrition Rate | **16.05%** |
| Average Age | **36.98 years** |
| Average Experience | **7.02 years** |

---

# 📊 Dashboard Visualizations

## 1. Attrition by Department

**Visualization:** Donut Chart

| Department | Attrition | Share |
|---|---:|---:|
| Sales | 87 | 37.02% |
| Operations | 52 | 22.13% |
| IT | 45 | 19.15% |
| Marketing | 29 | 12.34% |
| Finance / HR / Admin | Remaining | — |

### Key Finding

**Sales has the highest attrition contribution at 37.02%.**

This indicates that Sales should be a priority area for further investigation.

Potential factors include:

- Sales targets
- Commission structure
- Incentives
- Work pressure
- Management
- Career progression
- Work culture

---

## 2. Attrition by Salary Slab

**Visualization:** Horizontal Bar Chart

The dashboard analyzes workforce and attrition across salary groups:

- **0–3 LPA**
- **3–6 LPA**
- **6–10 LPA**
- **10+ LPA**

The largest workforce groups are concentrated in the lower and mid salary ranges.

### Key Finding

Lower and mid salary bands represent important retention segments.

Organizations should evaluate:

- Salary competitiveness
- Promotion timelines
- Career growth
- Performance-based increments
- Internal mobility

---

## 3. Age Group Distribution

**Visualization:** Bar Chart

The workforce is primarily concentrated in:

1. **26–35**
2. **36–45**

### Key Finding

The **26–35 age group** represents the largest workforce segment.

Retention strategies for this population can include:

- Career development
- Mentorship
- Skill development
- Internal job opportunities
- Recognition programs
- Competitive compensation

---

## 4. Attrition by Job Role & Satisfaction

**Visualization:** Matrix Table

| Job Role | Attrition |
|---|---:|
| Laboratory Technician | **61** |
| Human Resources | 12 |
| Manufacturing Director | 10 |
| Healthcare Representative | 9 |
| Manager | 5 |
| Research Director | 2 |

### Key Finding

**Laboratory Technicians have the highest attrition with 61 cases.**

The role also shows notable cases associated with lower job-satisfaction levels.

This suggests that factors such as:

- Compensation
- Job satisfaction
- Workload
- Career progression
- Training opportunities

may require further investigation.

---

# ⏱️ Workload & Overtime Analysis

The `OverTime` variable was analyzed using Python, SQL, and Power BI.

### Finding

Employees working overtime represent a substantial share of attrition cases.

This indicates that workload and work-life balance may be important contributors to employee turnover.

### Recommendation

HR teams should consider:

- Monitoring overtime hours
- Improving workforce planning
- Redistributing workloads
- Reviewing staffing requirements
- Improving shift management

---

# 🔍 Cross-Validation of Findings

One of the key strengths of this project is that major findings were validated across **Power BI, Python, and SQL**.

| Metric / Dimension | Dashboard Finding | Python Finding | SQL Finding | Key Insight |
|---|---|---|---|---|
| **Total Headcount** | 1.46K | 1,464 after cleaning | 1,464 `COUNT(*)` | 6 duplicate records were cleaned before reporting. |
| **Highest Attrition Department** | Sales — 37.02% | Sales shows top turnover | Sales has highest `employees_left` | Sales requires review of targets, commission, and work culture. |
| **Most Impacted Role** | Laboratory Technician — 61 | Concentrated in entry-level bands | Linked with lower Job Satisfaction | Technical entry-level roles may have lower retention due to pay and satisfaction factors. |
| **Workload Impact** | Overtime visible in trends | `OverTime` analyzed | Higher attrition with `OverTime = 'Yes'` | Frequent overtime is an important attrition-related factor. |

---

# 💡 Key Business Insights

### 1. Sales Has the Highest Attrition

Sales contributes approximately **37% of reported attrition**, making it the highest-priority department for retention analysis.

---

### 2. Laboratory Technicians Are Highly Impacted

Laboratory Technicians have **61 attrition cases**, making the role the most impacted job category in the analysis.

---

### 3. Overtime Is Associated With Attrition

Employees working overtime account for a substantial share of attrition cases.

This suggests that workload and work-life balance should be investigated.

---

### 4. Lower & Mid Salary Bands Need Attention

A significant portion of the workforce falls within lower and mid salary ranges.

Compensation and career progression may therefore be important retention factors.

---

### 5. Early-Career Employees Are an Important Segment

The **26–35 age group** represents the largest workforce segment.

Retention programs should focus on career growth, mentorship, skill development, and internal mobility.

---

# 📋 Business Recommendations

Based on the combined Python, SQL, and Power BI analysis:

### 1. Reduce Sales Attrition

- Review sales targets.
- Evaluate commission and incentive structures.
- Analyze manager-level attrition.
- Improve career progression.
- Monitor work pressure.

### 2. Improve Laboratory Technician Retention

- Review salary competitiveness.
- Create clear career paths.
- Provide training and development.
- Analyze workload.
- Improve employee engagement.

### 3. Manage Overtime

- Monitor overtime trends.
- Improve workforce planning.
- Redistribute workloads.
- Review staffing requirements.
- Encourage healthier work-life balance.

### 4. Improve Compensation Strategy

- Benchmark salaries against market levels.
- Review lower salary bands.
- Create structured salary progression.
- Improve performance-based growth opportunities.

### 5. Strengthen Employee Engagement

- Track job satisfaction.
- Conduct employee surveys.
- Identify departments with low satisfaction.
- Introduce targeted retention initiatives.

---

# 📁 Project Structure

```text
HR-Analytics/
│
├── data/
│   ├── raw_hr_data.csv
│   └── hr_01.csv
│
├── python/
│   └── hr_python_code.ipynb
│
├── sql/
│   └── hr_analysis.sql
│
├── powerbi/
│   └── HR_Analytics_Dashboard.pbix
│
├── report/
│   └── HR_Analytics_Project_Report.pdf
│
├── presentation/
│   └── HR_Analytics_Presentation.pptx
│
└── README.md
```

---

# ▶️ How to Run the Project

## Step 1 — Clone the Repository

```bash
git clone <repository-url>
cd HR-Analytics
```

## Step 2 — Install Python Libraries

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

## Step 3 — Run the Python Notebook

Open:

```text
python/hr_python_code.ipynb
```

Run the notebook to:

- Load the raw dataset
- Inspect the data
- Identify missing values
- Detect duplicate records
- Clean the dataset
- Export `hr_01.csv`

## Step 4 — Load Data into PostgreSQL

Create the required PostgreSQL database and table.

Import:

```text
data/hr_01.csv
```

## Step 5 — Run SQL Analysis

Open:

```text
sql/hr_analysis.sql
```

Execute the queries to reproduce the employee and attrition analysis.

## Step 6 — Open Power BI

Open:

```text
powerbi/HR_Analytics_Dashboard.pbix
```

Refresh the data connection if required.

---

# 📦 Project Deliverables

| Deliverable | Description |
|---|---|
| `hr_python_code.ipynb` | Python cleaning and preprocessing |
| `hr_01.csv` | Cleaned HR dataset |
| `hr_analysis.sql` | PostgreSQL/SQL analysis |
| `.pbix` | Interactive Power BI dashboard |
| `.pdf` | Project report |
| Gamma Presentation | Project presentation |
| `README.md` | Project documentation |

---

# 📈 Final Outcome

This project demonstrates an end-to-end **HR Analytics and Business Intelligence workflow**.

The project successfully combines:

**Python + Pandas + PostgreSQL + SQL + Power BI + Data Visualization + Business Analysis**

The analysis highlights several important areas for HR intervention:

- **Sales department attrition**
- **Laboratory Technician turnover**
- **Lower and mid salary bands**
- **Job satisfaction**
- **Overtime and workload**
- **Early- and mid-career employee retention**

The combination of data cleaning, SQL analysis, dashboard development, and business recommendations demonstrates practical skills required for a **Data Analyst / Business Intelligence Analyst** role.

---

## 👤 Author

**Raja S**

**Data Analyst | Python | SQL | PostgreSQL | Power BI | Data Analytics**

---

## ⭐ Project Highlights

- End-to-end HR Analytics project
- 1,470 raw records analyzed
- 1,464 records after data cleaning
- 235 attrition cases
- 16.05% attrition rate
- Python-based data preprocessing
- PostgreSQL database analytics
- SQL business analysis
- Interactive Power BI dashboard
- Cross-validation of Python, SQL, and Power BI findings
- Business recommendations for employee retention
