
# TITANIC-sql

# 🚢 Titanic Database — SQL Analysis

> **A complete SQL query collection analyzing the Titanic passenger dataset — from basic counts to window functions and CTEs.**

---

## 🇮🇷 توضیحات فارسی

### درباره پروژه
این پروژه مجموعه‌ای از ۱۵ کوئری SQL روی دیتابیس تایتانیک است.  
هدف، تحلیل داده‌های مسافران کشتی تایتانیک برای پیدا کردن الگوهای بقا، توزیع سنی، قیمت بلیط و ارتباط کلاس اجتماعی با شانس زنده ماندن است.

### 🗄️ دیتابیس
**نام:** `titanic`  
**جدول اصلی:** `titanicTable`

#### ستون‌های جدول

| ستون | توضیح |
|------|-------|
| `Survived` | بقا (1 = زنده، 0 = فوت‌شده) |
| `Pclass` | کلاس بلیط (1، 2 یا 3) |
| `Sex` | جنسیت |
| `Age` | سن |
| `SibSp` | تعداد خواهر/برادر یا همسر در کشتی |
| `Parch` | تعداد والدین یا فرزندان در کشتی |
| `Fare` | قیمت بلیط |
| `Embarked` | بندر سوار شدن (C، Q، S) |

### 📊 نتایج کلیدی
- **۳۴۲ نفر** (38.4%) جان سالم به در بردند
- **۵۴۹ نفر** (61.6%) جان خود را از دست دادند
- زنان به‌طور قابل توجهی بیشتر از مردان نجات یافتند
- مسافران کلاس ۱ بالاترین نرخ بقا را داشتند
- مسافران کلاس ۳ کمترین نرخ بقا را داشتند

### 📋 لیست کوئری‌ها

| شماره | توضیح | مفهوم SQL |
|-------|-------|-----------|
| 1 | تعداد کل بازماندگان | `WHERE`, `COUNT` |
| 2 | تعداد کل فوت‌شدگان | `WHERE`, `COUNT` |
| 3 | تعداد مسافران بر اساس جنسیت | `GROUP BY` |
| 4 | گروه‌بندی مسافران بر اساس سن | `CASE WHEN` |
| 5 | بازماندگان بر اساس کلاس | `GROUP BY`, `ORDER BY` |
| 6 | فوت‌شدگان بر اساس کلاس | `GROUP BY`, `ORDER BY` |
| 7 | بازماندگان بر اساس جنسیت | `GROUP BY` |
| 8 | فوت‌شدگان بر اساس جنسیت | `GROUP BY` |
| 9 | میانگین سن بر اساس کلاس | `AVG`, `GROUP BY` |
| 10 | بازماندگان بر اساس گروه سنی | `CASE WHEN` + `GROUP BY` |
| 11 | بازماندگان بر اساس بندر سوار شدن | `GROUP BY` |
| 12 | فوت‌شدگان بر اساس بندر سوار شدن | `GROUP BY` |
| 13 | میانگین قیمت بلیط بر اساس کلاس | `AVG`, `GROUP BY` |
| 14 | بازماندگان بر اساس ساختار خانوادگی | `GROUP BY` چندگانه |
| 15 | بازماندگان و فوت‌شدگان بر اساس کلاس + جنسیت | `COUNT(CASE WHEN)` |

### 🧠 مفاهیم SQL پوشش داده شده
- `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`
- `COUNT`, `AVG`
- `CASE WHEN ... THEN ... END`
- `COUNT(CASE WHEN ...)` — Conditional Aggregation
- گروه‌بندی چندگانه

---

## 🇬🇧 English Description

### About the Project
This project is a structured SQL analysis of the Titanic passenger dataset. Using **15 queries**, it explores survival patterns, demographic breakdowns, fare distributions, and class-based outcomes.

The dataset contains 891 passengers with information about their class, age, sex, embarkation port, family size, fare, and survival status.

### 🗄️ Database
**Name:** `titanic`  
**Main table:** `titanicTable`  
**Rows:** 891 passengers

### 📊 Key Findings

| Metric | Value |
|--------|-------|
| Total passengers | 891 |
| Survivors | 342 (38.4%) |
| Deceased | 549 (61.6%) |
| Female survivors | 233 / 314 (74.2%) |
| Male survivors | 109 / 577 (18.9%) |
| Class 1 avg fare | ~$84 |
| Class 2 avg fare | ~$20 |
| Class 3 avg fare | ~$13 |

### 📋 Query List

| # | Description | Key SQL Concept |
|---|-------------|-----------------|
| 1 | Count survivors | `WHERE Survived=1`, `COUNT` |
| 2 | Count deceased | `WHERE Survived=0`, `COUNT` |
| 3 | Passenger count by sex | `GROUP BY` |
| 4 | Age group classification | `CASE WHEN` |
| 5 | Survivors by class | `WHERE` + `GROUP BY` |
| 6 | Deceased by class | `WHERE` + `GROUP BY` |
| 7 | Survivors by sex | `WHERE` + `GROUP BY` |
| 8 | Deceased by sex | `WHERE` + `GROUP BY` |
| 9 | Average age by class | `AVG` + `GROUP BY` |
| 10 | Survivors by age group | `CASE WHEN` inside `GROUP BY` |
| 11 | Survivors by embarkation port | `GROUP BY` |
| 12 | Deceased by embarkation port | `GROUP BY` |
| 13 | Average fare by class | `AVG` + `GROUP BY` |
| 14 | Survivors by family structure | Multi-column `GROUP BY` |
| 15 | Survivors & deceased by class + sex | Conditional aggregation `COUNT(CASE WHEN)` |

### 🧠 SQL Concepts Covered

| Concept | Queries |
|---------|---------|
| Basic `SELECT` + `WHERE` | #1, #2, #5–8, #11, #12 |
| `GROUP BY` + aggregate functions | #3, #5–9, #11–14 |
| `CASE WHEN` expressions | #4, #10, #15 |
| Conditional aggregation | #15 |
| Multi-column `GROUP BY` | #14 |
| `ORDER BY` | #5, #6, #9, #11–14 |
