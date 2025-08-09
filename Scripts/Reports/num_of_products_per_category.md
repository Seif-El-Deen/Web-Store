# 🔢 Total number of products in each category
## SQL Query to Retrieve the total number of products in each category.

```sql SELECT c.cat_name, COUNT(*)
FROM category c
LEFT JOIN product_categories pc
on c.cat_id = pc.prod_cat_cat_id
group by c.cat_name
order by 2 desc;
```
