-- Goldman Sachs Financial Performance Analysis
-- Business Question 6: What financial patterns should management or investors
-- monitor going forward?

WITH financial_trends AS (
  SELECT
    year,
    net_revenues_mm,
    operating_expenses_mm,
    net_earnings_mm,
    diluted_eps,
    roe_percent,
    LAG(net_revenues_mm) OVER (ORDER BY year) AS prior_net_revenues_mm,
    LAG(operating_expenses_mm) OVER (ORDER BY year) AS prior_operating_expenses_mm,
    LAG(net_earnings_mm) OVER (ORDER BY year) AS prior_net_earnings_mm,
    LAG(diluted_eps) OVER (ORDER BY year) AS prior_diluted_eps,
    LAG(roe_percent) OVER (ORDER BY year) AS prior_roe_percent
  FROM `project-5c423be1-87c0-4e6a-ac7.goldman_sachs.goldman_firmwide_financials`
)

SELECT
  year,
  net_revenues_mm,
  operating_expenses_mm,
  net_earnings_mm,
  diluted_eps,
  roe_percent,
  ROUND(
    SAFE_DIVIDE(
      net_revenues_mm - prior_net_revenues_mm,
      prior_net_revenues_mm
    ) * 100,
    1
  ) AS revenue_yoy_percent,
  ROUND(
    SAFE_DIVIDE(
      operating_expenses_mm - prior_operating_expenses_mm,
      prior_operating_expenses_mm
    ) * 100,
    1
  ) AS expense_yoy_percent,
  ROUND(
    SAFE_DIVIDE(
      net_earnings_mm - prior_net_earnings_mm,
      prior_net_earnings_mm
    ) * 100,
    1
  ) AS net_earnings_yoy_percent,
  ROUND(
    SAFE_DIVIDE(
      diluted_eps - prior_diluted_eps,
      prior_diluted_eps
    ) * 100,
    1
  ) AS eps_yoy_percent,
  ROUND(
    roe_percent - prior_roe_percent,
    1
  ) AS roe_point_change,
  ROUND(
    SAFE_DIVIDE(net_earnings_mm, net_revenues_mm) * 100,
    1
  ) AS net_profit_margin_percent
FROM financial_trends
ORDER BY year;
