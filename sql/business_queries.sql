
-- Consumer Behaviour Analysis — SQL Queries
-- Dataset: Customer Shopping Trends (Kaggle)

-- Query 1: Total revenue by category
SELECT category, COUNT(*) AS total_orders,
    ROUND(SUM(purchase_amount__usd_), 2) AS total_revenue,
    ROUND(AVG(purchase_amount__usd_), 2) AS avg_order_value
FROM shopping_trends
GROUP BY category ORDER BY total_revenue DESC;

-- Query 2: Sales by season
SELECT season, COUNT(*) AS total_orders,
    ROUND(SUM(purchase_amount__usd_), 2) AS total_revenue
FROM shopping_trends
GROUP BY season ORDER BY total_revenue DESC;

-- Query 3: Discount impact
SELECT discount_applied, COUNT(*) AS total_orders,
    ROUND(AVG(purchase_amount__usd_), 2) AS avg_purchase,
    ROUND(AVG(review_rating), 2) AS avg_rating
FROM shopping_trends GROUP BY discount_applied;

-- Query 4: Top 5 items by revenue
SELECT item_purchased, COUNT(*) AS times_purchased,
    ROUND(SUM(purchase_amount__usd_), 2) AS total_revenue,
    ROUND(AVG(review_rating), 2) AS avg_rating
FROM shopping_trends
GROUP BY item_purchased ORDER BY total_revenue DESC LIMIT 5;

-- Query 5: Payment method by gender
SELECT gender, payment_method, COUNT(*) AS total_users
FROM shopping_trends
GROUP BY gender, payment_method ORDER BY gender, total_users DESC;

-- Query 6: Top 10 high value customers
SELECT customer_id, age, gender, location,
    ROUND(SUM(purchase_amount__usd_), 2) AS total_spent,
    COUNT(*) AS total_orders
FROM shopping_trends
GROUP BY customer_id ORDER BY total_spent DESC LIMIT 10;

-- Query 7: Seasonal category performance
SELECT season, category, COUNT(*) AS orders,
    ROUND(SUM(purchase_amount__usd_), 2) AS revenue
FROM shopping_trends
GROUP BY season, category ORDER BY season, revenue DESC;
