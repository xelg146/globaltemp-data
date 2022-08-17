SELECT * 
FROM climate_data.globaltemperatures;

SELECT dt, LandAverageTemperature, LandMaxTemperature, LandMinTemperature
FROM climate_data.globaltemperatures
order by 1,2;


-- looking at land max temp. vs land ave temp.
-- shows likelihood of attaining the maximum land temperature 
SELECT dt as Date, LandMaxTemperature, LandAverageTemperature, (LandAverageTemperature/LandMaxTemperature)*100 as NearMaxTempPercentage
FROM climate_data.globaltemperatures
Where dt like '%2010%'
order by 1,2;


-- looking at land max temp. vs land ave temp.
-- shows likelihood of attaining the maximum land temperature 
SELECT dt as Date, LandMaxTemperature, LandAverageTemperature, (LandAverageTemperature/LandMaxTemperature)*100 as NearMaxTempPercentage
FROM climate_data.globaltemperatures
Where dt like '%2010%'
order by 1,2;


-- looking at land min temp. vs land ave temp.
-- shows less likelihood of attaining the minimum land temperature 
SELECT dt as Date, LandMinTemperature, LandAverageTemperature, (LandMinTemperature/LandAverageTemperature)*100 as NearMinTempPercentage
FROM climate_data.globaltemperatures
Where dt like '%2010%'
order by 1,2;


-- looking at World date with highest LandAverageTemperature compared to LandAndOceanAverageTemperature
SELECT dt as WorldDate, MAX(LandAverageTemperature) as HighestLandTemperature, MAX(LandAndOceanAverageTemperature)	as HighestLandAndOceanTemperature
FROM climate_data.globaltemperatures
Group by dt
order by HighestLandTemperature desc;