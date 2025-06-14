import random

# Sample name lists
first_names = ['Alice', 'Bob', 'Charlie', 'Diana', 'Ethan', 'Fiona', 'George', 'Hannah',
               'Ian', 'Julia', 'Kevin', 'Lily', 'Michael', 'Nina', 'Oscar', 'Paula',
               'Quinn', 'Rachel', 'Steve', 'Tina', 'Uma', 'Victor', 'Wendy', 'Xander',
               'Yara', 'Zach']

last_names = ['Adams', 'Baker', 'Clark', 'Dixon', 'Evans', 'Foster', 'Garcia', 'Harris',
              'Ingram', 'Jones', 'King', 'Lee', 'Miller', 'Nelson', 'Owens', 'Parker',
              'Quinn', 'Roberts', 'Smith', 'Taylor', 'Upton', 'Vega', 'Williams', 'Young',
              'Zimmerman', 'Brown', 'Hall', 'Allen', 'Torres', 'Nguyen']

used_emails = set()

def generate_unique_email(first, last):
    base_email = f"{first.lower()[0]}{last.lower()}@example.com"
    counter = 1
    while base_email in used_emails:
        base_email = f"{first.lower()[0]}{last.lower()}{counter}@example.com"
        counter += 1
    used_emails.add(base_email)
    return base_email

with open(r'F:/Mentorship/Web Store Project 2/Customers_Insertion.sql', 'w') as f:
    f.write("INSERT INTO customers (customer_id,first_name, last_name, email, password) VALUES\n")
    for i in range(1, 1001):
        first = random.choice(first_names)
        last = random.choice(last_names)
        email = generate_unique_email(first, last)
        password = "hashed_password_123"  # Placeholder for demo; use real hash in production
        line = f"({i},'{first}', '{last}', '{email}', '{password}')"
        if i != 1000:
            line += ","
        line += "\n"
        f.write(line)
    f.write(";")