\# Food Waste Analysis \& Prevention System



\## Project Overview



Food waste is an important environmental and economic challenge. This project uses data analytics to explore food waste patterns across countries, food categories, and years, and to identify areas where waste-reduction efforts could be prioritized.



The project combines SQL, Python, and Power BI to transform a food-waste dataset into meaningful insights and an interactive dashboard.



\*\*Project Type:\*\* Data Analytics  

\*\*Tools:\*\* MySQL, Python, Power BI  

\*\*Machine Learning:\*\* Not used



\## Objectives



\- Analyze total food waste across food categories and countries.

\- Examine yearly trends in recorded food waste.

\- Compare reported economic losses across categories and countries.

\- Analyze average food waste per capita and household waste percentages.

\- Build an interactive Power BI dashboard.

\- Develop data-supported recommendations for food-waste reduction.



\## Dataset



\*\*Dataset Name:\*\* Global Food Wastage Dataset (2018–2024)



\*\*Dataset Size:\*\* 5,000 rows and 8 columns



The dataset includes the following fields:



\- Country

\- Year

\- Food Category

\- Total Waste (Tons)

\- Economic Loss (Million $)

\- Avg Waste per Capita (Kg)

\- Population (Million)

\- Household Waste (%)



The dataset covers 20 countries, 8 food categories, and the years 2018–2024.



\## Tools and Technologies



\### Python

\- Pandas

\- NumPy

\- Matplotlib

\- Seaborn

\- Jupyter Notebook



\### SQL

\- MySQL and MySQL Workbench

\- Aggregate functions

\- GROUP BY and HAVING

\- Subqueries

\- Common Table Expressions (CTEs)

\- Window functions and ranking

\- Data filtering and sorting



\### Power BI

\- Data visualization

\- KPI cards

\- Interactive slicers

\- Bar charts and line charts

\- DAX measures

\- Dashboard design and reporting



\## Project Workflow



1\. Inspected the dataset structure and data types.

2\. Checked missing values, duplicate rows, and numerical ranges.

3\. Performed exploratory data analysis using Python.

4\. Imported the dataset into MySQL and wrote business-analysis queries.

5\. Connected the data to Power BI.

6\. Developed an interactive dashboard to explore food waste and its reported economic impact.



\## Exploratory Data Analysis



The Python analysis covers:



\- Total food waste by food category.

\- Top 10 countries by total recorded food waste.

\- Year-wise food waste trends.



\## SQL Analysis



SQL queries are used to investigate:



\- Food waste by category.

\- Countries with the highest total recorded waste.

\- Food categories with the highest recorded economic loss.

\- Average waste per capita by country.

\- Total recorded waste by year.

\- Household waste percentages by country.

\- Category comparisons using subqueries.

\- Country rankings using CTEs and window functions.



\## Power BI Dashboard



The dashboard includes:



\- Total Food Waste KPI

\- Total Economic Loss KPI

\- Average Waste per Capita KPI

\- Average Household Waste KPI

\- Total Food Waste by Category

\- Top 10 Countries by Total Food Waste

\- Year-wise Food Waste Trend

\- Economic Loss by Food Category

\- Interactive slicers for Year, Country, and Food Category



\## Business Value



The analysis can help stakeholders identify food categories and countries with high recorded waste, compare reported economic losses, and investigate patterns that may deserve further attention.



The findings can support the prioritization of food-waste measurement and reduction initiatives. Specific prevention actions should be validated with more detailed operational data before their effectiveness is claimed.



\## Limitations



This dataset provides country-, year-, and food-category-level information. It does not include detailed restaurant-level records such as quantities prepared, portions sold, waste reasons, or ingredient expiry records.



Therefore, the project focuses on descriptive analysis and business intelligence rather than restaurant-level waste prediction or causal analysis. Results depend on the accuracy, definitions, and representativeness of the source data.



\## Repository Structure



\- `data/` — Dataset files

\- `notebooks/` — Python analysis notebook

\- `sql/` — SQL queries

\- `powerbi/` — Power BI dashboard file

\- `README.md` — Project documentation



\## Conclusion



This project demonstrates how SQL, Python, and Power BI can be combined in an end-to-end data analytics workflow, from data validation and exploratory analysis to database querying and interactive business reporting.

