-- Goldman Sachs Financial Performance Analysis
-- Business Question 2: How have operating expenses changed relative to revenue?

SELECT
  year,
  net_revenues_mm,
  operating_expenses_mm,
  ROUND(
    SAFE_DIVIDE(operating_expenses_mm, net_revenues_mm) * 100,
    1
  ) AS expense_to_revenue_percent
FROM `project-5c423be1-87c0-4e6a-ac7.goldman_sachs.goldman_firmwide_financials`
ORDER BY year;
