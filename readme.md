# SQL Window Functions project  

## Analyzing movie rental dataset
- using simple OVER()
- PARTITION BY()
- ranking functions
- analytic functions
- ORDER BY PARTITION BY()
- order of evaluation

## Window functions notes
- executed on the results of the query after the where clause
- cannot be used in where clause

- SUM(field) OVER()
- SUM(field) OVER(PARTITION BY field2)

- RANK() OVER(ORDER BY column_name) leaves gaps
- DENSE_RANK() OVER(ORDER BY column_name) not leaves any gaps
- ROW_NUMBER() OVER(ORDER BY column_name) each unique value
- NTILE(number) OVER(ORDER BY column_name) groups values in 

- USE CASE: returning data only with rank  1,2 or group 5  -> CTE

- SUM() OVER(ORDER BY.. ROWS BETWEEN.. AND..)
    UNBOUNDED PRECEDING – the first possible row.
    2 PRECEDING – the n-th row before the current row (instead of n, write the number of your choice).
    CURRENT ROW – simply current row.
    2 FOLLOWING – the n-th row after the current row.
    UNBOUNDED FOLLOWING – the last possible row.
	
    ROWS UNBOUNDED PRECEDING means BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ROWS n PRECEDING means BETWEEN n PRECEDING AND CURRENT ROW
    ROWS CURRENT ROW means BETWEEN CURRENT ROW AND CURRENT ROW

Note: these rules don't apply for FOLLOWING, only for PRECEDING and CURRENT ROW
- RANGE will take into account all rows that have the same value in the column which we order by
- if there are many orders on the same day - range will show a sum
- AVG(total_price) OVER(ORDER BY placed RANGE CURRENT ROW) average total_price for single days for each row
- The difference between ROWS and RANGE is similar to the difference between the ranking functions ROW_NUMBER and RANK()
- The difference is that aggregate functions calculate a cumulative result for all the rows in the window frame, while the analytic functions refer to single rows within the frame. 

ANALYTICAL FUNCTIONS

- LEAD(column_name) OVER(ORDER BY column_name) shows next value
- LEAD(column_name, number_of_rows, default_value)
- default value should be the same format

- LAG(column_name) OVER(ORDER BY column_name) shows previous value
- LAG(column_name, number_of_rows, default_value)
- default value should be the same format

USE CASE: LEAD/LAG useful when calculating day-to-day deltas
USE CASE: LEAD(column_name / column_name_2, 7) OVER(ORDER BY ..) use function inside LEAD/LAG

- FIRST_VALUE(column_name) OVER(ORDER BY column_name)
- LAST_VALUE(column_name) OVER(ORDER BY column_name)
- shows current value instead of highest value
- in order to show last value: LAST_VALUE(opened) OVER(ORDER BY opened ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)

USE CASE: shows for example lowest value from whole set of data
- NTH_VALUE(column_name, row_number) OVER(ORDER BY column_name ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)

- PARTITION BY ORDER BY
- USE CASE: with RANK() for each country creating a ranking of stores
- NTILE(X) (PARTITION BY.. ORDER BY..)
- USE CASE: CTE creating rating list diveded and than filter those data
- USE CASE: AVG(order) OVER(PARTITION BY store_id ORDER BY date ROWS BETWEEN UNBOUNDED PRECEDING AND FOLLOWING)

- the only places where we can use window functions without having to write subqueries are the SELECT and ORDER BY clauses. In all other places you have to use subqueries

## The way SQL querries are executed
    FROM – the database gets the data from tables in FROM clause and if necessary performs the JOINs,
    WHERE – the data are filtered with conditions specified in WHERE clause,
    GROUP BY – the data are grouped by with conditions specified in WHERE clause,
    aggregate functions – the aggregate functions are applied to the groups created in the GROUP BY phase,
    HAVING – the groups are filtered with the given condition,
    window functions,
    SELECT – the database selects the given columns,
    DISTINCT – repeated values are removed,
    UNION/INTERSECT/EXCEPT – the database applies set operations,
    ORDER BY – the results are sorted,
    OFFSET – the first rows are skipped,
    LIMIT/FETCH/TOP – only the first rows are selected