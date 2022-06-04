SELECT
	MIN(plan_price) AS 'faturamento_minimo',
    MAX(plan_price) AS 'faturamento_maximo',
    ROUND(AVG(plan_price), 2) AS 'faturamento_medio',
    SUM(plan_price) AS 'faturamento_total'
    FROM SpotifyClone.plans AS plans    
    INNER JOIN SpotifyClone.users AS users ON users.plan_id = plans.plan_id
    ;