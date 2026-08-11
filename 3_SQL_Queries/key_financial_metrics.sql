-- Goldman Sachs Financial Performance Analysis
-- Business Question 5: What do ROE, EPS, and profit margin reveal about performance?

SELECT
  year,
  diluted_eps,
  roe_percent,
  ROUND(
    SAFE_DIVIDE(net_earnings_mm, net_revenues_mm) * 100,
    1
  ) AS net_profit_margin_percent
FROM `project-5c423be1-87c0-4e6a-ac7.goldman_sachs.goldman_firmwide_financials`
ORDER BY year;
