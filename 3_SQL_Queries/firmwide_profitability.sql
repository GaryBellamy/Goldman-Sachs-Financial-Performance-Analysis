-- Goldman Sachs Financial Performance Analysis
-- Business Question 4: How has profitability changed across the analysis period?

SELECT
  year,
  net_revenues_mm,
  net_earnings_mm,
  ROUND(
    SAFE_DIVIDE(net_earnings_mm, net_revenues_mm) * 100,
    1
  ) AS net_profit_margin_percent
FROM `project-5c423be1-87c0-4e6a-ac7.goldman_sachs.goldman_firmwide_financials`
ORDER BY year;
