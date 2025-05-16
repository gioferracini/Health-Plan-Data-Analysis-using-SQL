# 🏥 Brazilian Health Plan — SQL Analytics Project

📊 **Overview**

This project simulates a Brazilian Health Plan environment, analyzing key metrics through 20 SQL queries. The goal is to derive actionable insights from a fictional database created using Python with synthetic data generation.
All data are fictitious and intended for portfolio and learning purposes only.

---

🧠 **Key Skills Demonstrated**

* SQL (CTEs, joins, aggregations, ranking functions)
* Data modeling & healthcare KPIs
* Analytical thinking and storytelling
* Realistic database simulation with Brazilian health plan structure

---

🗂️ **Database Structure**

The project uses the following core tables (in .csv format):

* beneficiarios.csv – Health plan beneficiaries
* planos.csv – Health plans
* prestadores.csv – Healthcare providers
* atendimentos1.csv, atendimentos2.csv, atendimentos3.csv – Patient visits (split due to file size)

The full database simulates records from 2007 to 2024, following realistic patterns of a Brazilian healthcare operator.

---

📌 **Analytical Scripts**

Grouped by topic for better clarity:

📈 **Evolution & Volume**

* Evolution of active beneficiaries by year
* Annual evolution of appointments
* Total billing per year
* Most common procedures performed

👥 **Beneficiary Profile**

* Distribution by age group
* Distribution by gender (volume and cost)
* Distribution by city and state
* Beneficiaries with the highest cost
* Average appointments per beneficiary
* Average tenure of beneficiaries in the plan

💼 **Plan & Provider Performance**

* Count of beneficiaries per health plan
* Cost comparison across plans (volume and value)
* Ticket average per appointment
* Providers with highest appointment volume
* Top specialties by volume
* Top providers by specialty
* Reutilization by provider
* Reutilization by specialty

📆 **Temporal Analysis**

* Appointment frequency by day of week
* Average length of stay in the plan (in days, weeks, months, years)

---

🗃️ **Files**

/1 - Evolution and Volume of Assistance – 5 SQL scripts (.sql format)

/2 - Profile and Behavior of Beneficiaries – 6 SQL scripts (.sql format)

/3 - Performance and Production of Providers – 5 SQL scripts (.sql format)

/4 - Financial and Plans – 3 SQL scripts (.sql format)

/5 - Administrative Information – 1 SQL script (.sql format)

/Creating Database – Database tables in CSV

README.md – Project documentation

---

🚀 **How to Use**

You can import the .csv files into any relational database (like MySQL, PostgreSQL, SQLite) and execute the scripts directly.

---

📌 **Important Notes**

This dataset was entirely generated with Python and does not reflect real patient data.

Some scripts use CTEs (WITH), window functions like ROW_NUMBER(), and date functions like DATEDIFF().

---

## 📬 Contact

- Email: gioferracini97@gmail.com
- LinkedIn: [linkedin.com/in/giovanni-ferracini](https://www.linkedin.com/in/giovanni-ferracini/)

---

⭐ If you found this analysis useful or insightful, feel free to star the repository!
