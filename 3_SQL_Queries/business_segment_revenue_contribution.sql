-- Goldman Sachs Financial Performance Analysis
-- Business Question 3: Which business segments contribute the most revenue,
-- and how has that changed over time?

SELECT
  year,
  segment_name,
  net_revenues_mm,
  ROUND(
    SAFE_DIVIDE(
      net_revenues_mm,
      SUM(net_revenues_mm) OVER (PARTITION BY year)
    ) * 100,
    1
  ) AS revenue_contribution_percent,
  RANK() OVER (
    PARTITION BY year
    ORDER BY net_revenues_mm DESC
  ) AS revenue_rank
FROM `project-5c423be1-87c0-4e6a-ac7.goldman_sachs.goldman_business_segments`
ORDER BY year, revenue_rank;
