USE food_analysis;
DESCRIBE food_wastage_dataset;
SELECT COUNT(*) AS total_records FROM food_wastage_dataset;
SELECT `Food Category`, SUM(`Total Waste (Tons)`) AS total_waste_tons
FROM food_wastage_dataset
GROUP BY `Food Category`
ORDER BY total_waste_tons DESC;
SELECT Country, SUM(`Total Waste (Tons)`) AS total_waste_tons
FROM food_wastage_dataset
GROUP BY Country
ORDER BY total_waste_tons DESC
LIMIT 10;
SELECT `Food Category`, SUM(`Economic Loss (Million $)`) AS total_economic_loss
FROM food_wastage_dataset
GROUP BY `Food Category`
ORDER BY total_economic_loss DESC
LIMIT 5;
SELECT Country, AVG(`Avg Waste per Capita (Kg)`) AS avg_waste_per_capita
FROM food_wastage_dataset
GROUP BY Country
ORDER BY avg_waste_per_capita DESC
LIMIT 5;
SELECT year, SUM(`Total Waste (Tons)`) AS total_food_waste
FROM food_wastage_dataset
GROUP BY Year
ORDER BY total_food_waste DESC;
SELECT Country, AVG(`Household Waste (%)`) AS avg_household_waste
FROM food_wastage_dataset
GROUP BY Country
HAVING AVG(`Household Waste (%)`) > 50
ORDER BY avg_household_waste DESC;
SELECT Year, SUM(`Total Waste (Tons)`) AS total_waste
FROM food_wastage_dataset
WHERE Year >= 2020
GROUP BY Year
HAVING SUM(`Total Waste (Tons)`) > 10000000
ORDER BY total_waste DESC;
SELECT `Food Category`, SUM(`Total Waste (Tons)`) AS total_waste
FROM food_wastage_dataset GROUP BY `Food Category`
HAVING SUM(`Total Waste (Tons)`) > (SELECT AVG(category_total)
    FROM (SELECT SUM(`Total Waste (Tons)`) AS category_total
	FROM food_wastage_dataset
	GROUP BY `Food Category`
    ) AS category_totals
)
ORDER BY total_waste DESC;
WITH country_loss AS (SELECT Country, SUM(`Economic Loss (Million $)`) AS total_loss
FROM food_wastage_dataset
GROUP BY Country)
SELECT Country, total_loss
FROM country_loss
ORDER BY total_loss DESC
LIMIT 5;
WITH country_waste AS (SELECT Country, SUM(`Total Waste (Tons)`) AS total_waste
FROM food_wastage_dataset
GROUP BY Country)
SELECT Country, total_waste,
DENSE_RANK() OVER ( ORDER BY total_waste DESC) AS waste_rank
FROM country_waste
ORDER BY waste_rank;
