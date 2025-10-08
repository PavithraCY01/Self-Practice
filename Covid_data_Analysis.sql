SELECT * FROM covid;
select Country, sum(Confirmed) as Total_Confirmed_cases from covid group by Country order by Total_Confirmed_cases desc
alter table covid change Date Date DATE
select DATE_FORMAT(Date, '%Y-%m') AS Month, sum(Confirmed) as Total_Confirmed_cases from covid group by Month order by Month desc
select Country, sum(Deaths) as Top3_death_rate from covid group by Country order by Top3_death_rate desc limit 3
SELECT Country, SUM(Recovered) * 100.0 / SUM(Confirmed) AS RecoveryRate FROM covid GROUP BY Country ORDER BY RecoveryRate DESC;
SELECT Country, SUM(Deaths) * 100.0 / SUM(Confirmed) AS DeathRate  FROM covid GROUP BY Country ORDER BY DeathRate DESC;
SELECT Country, SUM(Confirmed) AS TotalConfirmed, SUM(Recovered) AS TotalRecovered FROM covid GROUP BY Country ORDER BY TotalConfirmed DESC;