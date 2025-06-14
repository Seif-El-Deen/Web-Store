import random
from datetime import timedelta, datetime

# File paths
orders_file = r'F:/Mentorship/Web Store Project 2/Orders_Insertion.sql'
details_file = r'F:/Mentorship/Web Store Project 2/Order_Details_Insertion.sql'

# Settings
NUM_ORDERS = 1000
MIN_PRODUCTS_PER_ORDER = 1
MAX_PRODUCTS_PER_ORDER = 5
MIN_CUSTOMER_ID = 1
MAX_CUSTOMER_ID = 1000
MIN_PRODUCT_ID = 1
MAX_PRODUCT_ID = 10000
START_DATE = datetime(2024, 7, 1)
END_DATE = datetime(2025, 1, 1)

def random_date(start, end):
    """Generate a random date between start and end"""
    return start + timedelta(
        seconds=random.randint(0, int((end - start).total_seconds()))
    )

with open(orders_file, 'w', encoding='utf-8') as ofile, \
     open(details_file, 'w', encoding='utf-8') as dfile:

    # Write headers
    ofile.write("INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES\n")
    dfile.write("INSERT INTO order_details (order_detail_id, order_id, product_id, quantity, unit_price) VALUES\n")

    total_amount_sum = 0
    detail_id = 1

    for order_id in range(1, NUM_ORDERS + 1):
        customer_id = random.randint(MIN_CUSTOMER_ID, MAX_CUSTOMER_ID)
        order_date = random_date(START_DATE, END_DATE)
        num_items = random.randint(MIN_PRODUCTS_PER_ORDER, MAX_PRODUCTS_PER_ORDER)
        total_amount = 0

        # Write order details
        for item in range(num_items):
            product_id = random.randint(MIN_PRODUCT_ID, MAX_PRODUCT_ID)
            quantity = random.randint(1, 3)
            unit_price = round(random.uniform(5, 500), 2)
            total_amount += quantity * unit_price

            detail_line = f"({detail_id}, {order_id}, {product_id}, {quantity}, {unit_price})"
            if item != num_items - 1 or order_id != NUM_ORDERS:
                detail_line += ","
            detail_line += "\n"
            dfile.write(detail_line)
            detail_id += 1

        # Write order line
        order_line = f"({order_id}, {customer_id}, '{order_date.strftime('%Y-%m-%d %H:%M:%S')}', {round(total_amount, 2)})"
        if order_id != NUM_ORDERS:
            order_line += ","
        order_line += "\n"
        ofile.write(order_line)

    # End the statements
    ofile.write(";")
    dfile.write(";")