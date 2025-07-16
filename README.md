
# 📊 Calorie Tracker - MySQL Database Project

This project is a structured **MySQL database system** designed to track food intake, calorie values, and associated health judgments. It allows users to log their food consumption, calculate total calorie intake, and categorize dietary habits into quality assessments like *Very bad*, *Better*, or *Excellent*.

---

## 🗂️ Database Structure

### 1. `calorie_tracker`
Stores information about various food items.

| Field         | Type         | Description                           |
|---------------|--------------|---------------------------------------|
| `calorie_id`  | `INT`        | Unique identifier for each food       |
| `Food`        | `VARCHAR`    | Name of the food                      |
| `Unit`        | `FLOAT`      | Serving size quantity                 |
| `Unit_Measure`| `ENUM`       | Measurement unit (e.g. piece, cup)    |
| `calories`    | `INT`        | Caloric value per unit                |
| `judgement_id`| `INT`        | Foreign key to `judgement_` table     |

---

### 2. `judgement_`
Stores qualitative assessment of foods based on health impact.

| Field          | Type   | Description                       |
|----------------|--------|-----------------------------------|
| `judgement_id` | `INT`  | Unique ID                         |
| `judgement`    | `ENUM` | Health quality (`Very bad`, `Better`, `Excellent`) |

---

### 3. `my_consumption`
Tracks user consumption data by date and quantity.

| Field             | Type  | Description                             |
|------------------|-------|-----------------------------------------|
| `calorie_id`      | `INT` | Foreign key linking to `calorie_tracker` |
| `how_many_units`  | `INT` | How many units of food consumed        |
| `Dates`           | `DATE`| Date of consumption                     |

---

## 🧪 Sample Data

- **Twizzlers**, **Rice Pudding**, **Cashews**, and **Broccoli** are examples of tracked foods.
- Caloric values vary, and each food is labeled as either `Very bad`, `Better`, or `Excellent` based on nutrition.

---

## 🔧 Features

- Track multiple food items with calorie information
- Record consumption history
- Link consumption data to health judgments
- Enforces foreign key constraints and uniqueness
- Easy to extend and integrate with a UI (e.g., Python, PHP frontends)

---

## 💻 Getting Started

1. **Clone this repo** or import the `.sql` file into your MySQL Workbench or command-line tool:

```bash
mysql -u yourUser -p trackcalories < calorieTrackerBackup.sql
```

2. Use `SELECT` queries to explore the tables or build a frontend around it.

---

## 📌 Future Enhancements

- User authentication
- Web frontend using React or Flask
- Nutritional graph visualizations
- Mobile app integration
