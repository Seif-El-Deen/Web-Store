-- Top-Level category
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(1, 'Electronics', 'Gadgets, devices, and electronics products.', NULL),
(2, 'Home & Garden', 'Furniture, tools, and home decor items.', NULL),
(3, 'Fashion', 'Clothing, shoes, and accessories.', NULL),
(4, 'Books', 'All types of books and audiobooks.', NULL),
(5, 'Sports & Outdoors', 'Gear and equipment for sports activities.', NULL),
(6, 'Beauty & Personal Care', 'Skincare, haircare, cosmetics.', NULL),
(7, 'Toys & Games', 'Kids'' toys, puzzles, and board games.', NULL),
(8, 'Automotive', 'Car parts, accessories, and tools.', NULL),
(9, 'Grocery', 'Food, drinks, snacks, and household essentials.', NULL),
(10, 'Health & Wellness', 'Vitamins, supplements, and medical devices.', NULL),
(11, 'Pet Supplies', 'Food, toys, and care products for pets.', NULL),
(12, 'Industrial & Scientific', 'Equipment and supplies for professionals.', NULL);

-- Electronics Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(13, 'Phones', 'Mobile phones and smartphones.', 1),
(14, 'Laptops', 'Notebook computers and accessories.', 1),
(15, 'TVs', 'Televisions and monitors.', 1),
(16, 'Cameras', 'Digital cameras and photography gear.', 1),
(17, 'Headphones', 'Audio headphones and earbuds.', 1),
(18, 'Accessories', 'Phone cases, chargers, and cables.', 1);

-- Phones Deep Nesting
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(19, 'Smartphones', 'High-end mobile phones.', 13),
(20, 'Feature Phones', 'Basic mobile phones.', 13),
(21, 'Android Phones', 'Phones running on Android OS.', 19),
(22, 'iPhone', 'Apple iPhone models and variants.', 19);

-- Laptops Deep Nesting
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(23, 'Gaming Laptops', 'High-performance laptops for gaming.', 14),
(24, 'Ultrabooks', 'Lightweight and portable laptops.', 14),
(25, 'MacBooks', 'Apple MacBooks and MacBook Pros.', 14);

-- TVs Deep Nesting
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(26, 'LED TVs', 'LED-backlit LCD televisions.', 15),
(27, 'OLED TVs', 'Organic LED high-definition TVs.', 15),
(28, 'QLED TVs', 'Quantum dot LED TVs.', 15);

-- Cameras Deep Nesting
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(29, 'DSLR Cameras', 'Digital single-lens reflex cameras.', 16),
(30, 'Mirrorless Cameras', 'Compact and lightweight digital cameras.', 16),
(31, 'Action Cameras', 'GoPro and similar rugged video cameras.', 16);

-- Home & Garden Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(32, 'Furniture', 'Sofas, beds, tables, and chairs.', 2),
(33, 'Lighting', 'Lamps, ceiling lights, and outdoor lighting.', 2),
(34, 'Kitchenware', 'Cookware, utensils, and small appliances.', 2),
(35, 'Garden Tools', 'Gardening equipment and supplies.', 2);

-- Furniture Deep Nesting
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(36, 'Living Room', 'Sofas, coffee tables, TV stands.', 32),
(37, 'Bedroom', 'Beds, wardrobes, nightstands.', 32),
(38, 'Dining Room', 'Tables, chairs, and dining sets.', 32);

-- Fashion Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(39, 'Men', 'Clothing and accessories for men.', 3),
(40, 'Women', 'Clothing and accessories for women.', 3),
(41, 'Shoes', 'Footwear for all ages and genders.', 3),
(42, 'Accessories', 'Watches, belts, bags, and jewelry.', 3);

-- Men Clothing Deep Nesting
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(43, 'T-Shirts', 'Casual wear for men.', 39),
(44, 'Formal Wear', 'Suits, ties, and dress shirts.', 39),
(45, 'Jeans', 'Denim pants and trousers.', 39);

-- Women Clothing Deep Nesting
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(46, 'Dresses', 'Evening, casual, and party dresses.', 40),
(47, 'Skirts', 'Mini, pencil, and long skirts.', 40),
(48, 'Tops', 'Blouses, tunics, and crop tops.', 40);

-- Books Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(49, 'Fiction', 'Novels and fictional literature.', 4),
(50, 'Non-Fiction', 'Biographies, history, science, etc.', 4),
(51, 'Children', 'Books for young readers.', 4),
(52, 'Audiobooks', 'Audio format books for listening.', 4);

-- Sports & Outdoors Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(53, 'Fitness', 'Gym equipment and workout gear.', 5),
(54, 'Cycling', 'Bikes, helmets, and cycling accessories.', 5),
(55, 'Camping', 'Tents, sleeping bags, and outdoor gear.', 5);

-- Beauty & Personal Care Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(56, 'Skincare', 'Facial care, body lotions, and cleansers.', 6),
(57, 'Haircare', 'Shampoos, conditioners, and styling tools.', 6),
(58, 'Cosmetics', 'Makeup, nail polish, and beauty kits.', 6);

-- Toys & Games Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(59, 'Action Figures', 'Collectible and action figures for kids.', 7),
(60, 'Puzzles', 'Jigsaw puzzles and brain teasers.', 7),
(61, 'Board Games', 'Classic and modern board games.', 7);

-- Automotive Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(62, 'Car Parts', 'Engines, brakes, and mechanical components.', 8),
(63, 'Accessories', 'Interior and exterior car accessories.', 8),
(64, 'Tools & Equipment', 'Repair tools and garage equipment.', 8);

-- Grocery Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(65, 'Snacks', 'Chips, cookies, nuts, and candy.', 9),
(66, 'Drinks', 'Soft drinks, juices, and bottled water.', 9),
(67, 'Canned Foods', 'Canned soups, beans, tuna, etc.', 9);

-- Health & Wellness Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(68, 'Vitamins', 'Multivitamins, vitamin D, C, B complex.', 10),
(69, 'Supplements', 'Protein powders, omega-3, probiotics.', 10),
(70, 'Medical Devices', 'Blood pressure monitors, thermometers.', 10);

-- Pet Supplies Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(71, 'Dog Food', 'Dry and wet food for dogs.', 11),
(72, 'Cat Food', 'Dry and wet food for cats.', 11),
(73, 'Toys', 'Balls, chew toys, and interactive pet toys.', 11);

-- Industrial & Scientific Subcategory
INSERT INTO category (cat_id, cat_name, cat_desc, cat_parent_id) VALUES
(74, 'Lab Equipment', 'Microscopes, beakers, lab instruments.', 12),
(75, 'Industrial Tools', 'Power tools, measuring devices.', 12),
(76, 'Safety Gear', 'Gloves, goggles, protective clothing.', 12);

select count(*) from category
order by cat_id;