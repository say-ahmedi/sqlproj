WITH SuccessfulTransactions AS (
    SELECT userId, amount
    FROM Pay
    WHERE isPay = TRUE

    UNION ALL

    SELECT userId, amount
    FROM Dealer
),

UserStats AS (
    SELECT
        u.id AS userId,
        u.date AS registration_date,
        COUNT(st.amount) AS successful_deposits_count,
        SUM(st.amount) AS successful_deposits_sum
    FROM User u
    JOIN SuccessfulTransactions st
    ON u.id = st.userId
    WHERE u.Admin = FALSE
    GROUP BY u.id, u.date
)

SELECT
    userId,
    registration_date,
    successful_deposits_count,
    successful_deposits_sum
FROM UserStats
ORDER BY successful_deposits_sum DESC;
