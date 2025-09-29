WITH sales_data AS (
    SELECT
        s.sale_id,
        s.customer_id,
        s.product_id,
        s.quantity,
        s.sale_date,
        p.category,
        p.price,
        (s.quantity * p.price) AS total_amount
    FROM {{ ref('stg_sales') }} AS s
    JOIN {{ ref('stg_products') }} AS p
      ON s.product_id = p.product_id
)

SELECT
    s.customer_id,
    s.category,
    SUM(s.total_amount) AS total_spent,
    COUNT(DISTINCT s.sale_id) AS total_orders
FROM sales_data AS s
GROUP BY s.customer_id, s.category
