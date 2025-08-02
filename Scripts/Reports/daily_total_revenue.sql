--  SQL query to generate a daily report of the total revenue for a specific date.
 select sum(total_amount) from orders where DATE_FORMAT(order_date,'%y-%m-%d') = DATE_FORMAT('2024-07-25','%y-%m-%d');
 select DATE_FORMAT(order_date,'%d-%m-%y'), sum(total_amount) 
 from orders GROUP BY DATE_FORMAT(order_date,'%d-%m-%y')
 ORDER BY 1;