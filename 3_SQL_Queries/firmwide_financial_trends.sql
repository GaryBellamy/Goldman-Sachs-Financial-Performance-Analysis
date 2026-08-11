-- Goldman Sachs Financial Performance Analysis
-- Business Question 1: How have net revenues and net earnings changed over time?

SELECT
  year,
  net_revenues_mm,
  net_earnings_mm
FROM `project-5c423be1-87c0-4e6a-ac7.goldman_sachs.goldman_firmwide_financials`
ORDER BY year;
