import random

# Sample word banks
adjectives = ['Premium', 'Wireless', 'Smart', 'Deluxe', 'Compact', 'Eco-Friendly', 'Modern']
nouns = ['Headphones', 'Chair', 'Blender', 'Watch', 'Bike', 'Camera', 'Shirt', 'Speaker', 'Bag', 'Sunglasses']

unique_product_name=[]

with open(r'F:/Mentorship/Web Store Project 2/Products Insertion.sql', 'w') as f:
    f.write("INSERT INTO products (product_id, category_id, product_name, description, price, stock_quantity) VALUES\n")
    for i in range(1, 10001):
        category_id = random.randint(1, 465)
        adj = random.choice(adjectives)
        noun = random.choice(nouns)
        name = f"{adj} {noun} - {i}"
        unique_product_name.append(name)
        desc = f"High-quality {name} with advanced features."
        price = round(random.uniform(5, 500), 2)
        stock = random.randint(0, 500)
        line = f"({i}, {category_id}, '{name}', '{desc}', {price}, {stock})"
        if i != 10000:
            line += ","
        line += "\n"
        f.write(line)
    f.write(";")
    