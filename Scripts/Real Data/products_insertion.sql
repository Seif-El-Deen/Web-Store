INSERT INTO product (
    prod_name, prod_desc, prod_long_desc, prod_size, prod_weight,
    prod_price, prod_on_hand, prod_comments, prod_image,
    prod_discount, prod_ship_cost
) VALUES
-- Smartphones
('Samsung Galaxy S24', 'Latest flagship Android smartphone.', 'The Samsung Galaxy S24 features a high-resolution camera, AI integration, and all-day battery life.', 'M', 180, 799.99, 50, 'Popular choice among Android users.', 'galaxy-s24.jpg', 50.00, 10.00),

('iPhone 15 Pro', 'Premium Apple smartphone.', 'Sleek design, A17 chip, and top-tier camera system.', 'L', 187, 999.99, 30, 'High demand, limited stock.', 'iphone-15-pro.jpg', 0.00, 10.00),

-- Laptops
('MacBook Air M2', 'Apple MacBook Air with M2 chip.', 'Lightweight, powerful performance, long battery life.', 'XL', 1240, 1199.99, 20, 'Ideal for students and professionals.', 'macbook-air-m2.jpg', 0.00, 15.00),

('Dell XPS 15', 'High-performance Windows laptop.', 'Great for designers and developers with a stunning display.', 'XL', 1800, 1499.99, 15, 'Excellent multimedia experience.', 'dell-xps-15.jpg', 100.00, 15.00),

-- TVs
('Sony Bravia XR A840K OLED TV', 'OLED smart TV with immersive sound.', 'Experience true blacks and vibrant colors with this 65" OLED television.', 'XXL', 25000, 2499.99, 10, 'Top-tier picture quality.', 'sony-oled-tv.jpg', 0.00, 50.00),

-- Cameras
('Canon EOS R5', 'Professional mirrorless camera.', 'High-resolution sensor, fast autofocus, and 8K video support.', 'M', 700, 3899.99, 8, 'Favored by professional photographers.', 'canon-r5.jpg', 100.00, 25.00),

-- Headphones
('Sony WH-1000XM5', 'Noise-canceling over-ear headphones.', 'Industry-leading noise cancellation and superior audio quality.', 'M', 250, 399.99, 100, 'Great for travel and work.', 'sony-headphones.jpg', 20.00, 10.00),

-- Furniture - Living Room
('Modern Fabric Sofa', '3-seater fabric sofa.', 'Comfortable and stylish living room centerpiece.', 'XL', 30000, 899.99, 5, 'Available in multiple colors.', 'sofa.jpg', 50.00, 75.00),

-- Kitchenware
('Stainless Steel Cookware Set', '10-piece cookware set.', 'Includes pots, pans, and lids made from durable stainless steel.', 'L', 8000, 199.99, 20, 'Perfect for everyday cooking.', 'cookware-set.jpg', 10.00, 20.00),

-- Men's T-Shirts
('Cotton Crew Neck T-Shirt', 'Classic men''s t-shirt.', 'Soft cotton material, available in multiple sizes.', 'M', 200, 19.99, 200, 'Basic wardrobe essential.', 'tshirt-men.jpg', 2.00, 5.00),

-- Women's Dresses
('Evening Cocktail Dress', 'Elegant sleeveless cocktail dress.', 'Perfect for parties or formal events.', 'S', 400, 89.99, 30, 'Dry clean only.', 'dress-women.jpg', 10.00, 10.00),

-- Books - Fiction
('The Silent Patient', 'Psychological thriller novel.', 'A gripping story of a woman who stops speaking after a shocking event.', NULL, 300, 14.99, 100, 'Bestselling mystery book.', 'the-silent-patient.jpg', 2.00, 3.99),

-- Toys - Action Figures
('Marvel Iron Man Figure', 'Detailed Marvel superhero figure.', 'Collectible item for fans of all ages.', 'M', 300, 29.99, 50, 'Limited edition.', 'ironman-figure.jpg', 0.00, 5.00),

-- Automotive - Car Accessories
('Leather Steering Wheel Cover', 'Universal leather steering wheel cover.', 'Improves grip and comfort while driving.', 'M', 250, 19.99, 150, 'Easy to install.', 'steering-cover.jpg', 0.00, 4.99),

-- Pet Supplies - Dog Food
('Organic Grain-Free Dry Dog Food', 'Nutritious food for adult dogs.', 'Made with real chicken and vegetables.', NULL, 12000, 39.99, 40, 'Suitable for all breeds.', 'dog-food.jpg', 5.00, 10.00),

-- Health & Wellness - Vitamins
('Multivitamin Complex', 'Daily multivitamin supplement.', 'Supports energy, immunity, and overall health.', NULL, 100, 24.99, 200, '60 capsules per bottle.', 'multivitamins.jpg', 2.00, 3.99),

-- Beauty - Skincare
('Hydrating Facial Moisturizer', 'Non-greasy daily moisturizer.', 'Keeps skin soft and hydrated throughout the day.', NULL, 150, 29.99, 75, 'For all skin types.', 'facial-moisturizer.jpg', 0.00, 5.00),

-- Sports & Fitness
('Adjustable Dumbbell Set', 'Pair of adjustable dumbbells.', 'Versatile for home workouts.', 'L', 8000, 149.99, 10, 'Easy to adjust weight.', 'dumbbells.jpg', 10.00, 20.00),

-- Groceries - Snacks
('Sea Salt Almonds', 'Healthy roasted and salted almonds.', 'Great for snacking or baking.', NULL, 200, 6.99, 150, 'No added sugar.', 'almonds.jpg', 0.00, 3.99),

-- Industrial Tools
('Digital Caliper', 'Precision measuring tool.', 'Used in engineering and manufacturing.', 'S', 150, 19.99, 30, 'Battery-powered LCD display.', 'caliper.jpg', 0.00, 5.00);


INSERT INTO product (
    prod_name, prod_desc, prod_long_desc, prod_size, prod_weight,
    prod_price, prod_on_hand, prod_comments, prod_image,
    prod_discount, prod_ship_cost
) VALUES

-- Smartphones
('Google Pixel 8 Pro', 'Latest Google flagship smartphone.', 'Advanced AI features, premium build, and top-tier camera.', 'M', 212, 899.99, 40, 'Excellent battery life.', 'pixel-8-pro.jpg', 50.00, 10.00),

-- Laptops
('ASUS ROG Zephyrus G14', 'Compact gaming laptop.', 'AMD Ryzen processor with powerful GPU in a portable chassis.', 'L', 1400, 1399.99, 15, 'Ideal for mobile gamers.', 'asus-gaming-laptop.jpg', 75.00, 15.00),

-- TVs
('LG C3 OLED TV', 'High-performance OLED smart TV.', 'Perfect for gaming and streaming with vibrant colors.', 'XXL', 22000, 2199.99, 12, 'Supports Dolby Vision.', 'lg-oled-tv.jpg', 0.00, 50.00),

-- Cameras
('Nikon Z6 II', 'Full-frame mirrorless camera.', 'Great for photography enthusiasts with fast autofocus.', 'M', 610, 1999.99, 10, 'Excellent low-light performance.', 'nikon-z6.jpg', 100.00, 25.00),

-- Headphones
('Bose QuietComfort 45', 'Premium noise-canceling headphones.', 'All-day comfort and immersive sound quality.', 'M', 245, 329.95, 60, 'Bluetooth enabled.', 'bose-qc45.jpg', 20.00, 10.00),

-- Furniture - Bedroom
('Queen Size Bed Frame', 'Sturdy metal bed frame.', 'Easy to assemble and durable.', 'XL', 30000, 199.99, 8, 'Mattress not included.', 'bed-frame.jpg', 15.00, 75.00),

-- Kitchenware
('Non-Stick Frying Pan Set', 'Set of 3 non-stick pans.', 'Ideal for healthy cooking with less oil.', 'M', 1500, 49.99, 50, 'Dishwasher safe.', 'frying-pan-set.jpg', 5.00, 10.00),

-- Men's Formal Wear
('Men''s Slim Fit Suit', 'Single-breasted 2-piece suit.', 'Elegant design for weddings or business meetings.', 'L', 1200, 299.99, 20, 'Available in black and navy.', 'men-suit.jpg', 20.00, 15.00),

-- Women's Skirts
('A-Line Midi Skirt', 'Classic women''s skirt.', 'Flattering fit, perfect for office or casual wear.', 'M', 400, 39.99, 60, 'Machine washable.', 'midi-skirt.jpg', 5.00, 7.99),

-- Books - Non-Fiction
('Sapiens: A Brief History of Humankind', 'Exploration of human history.', 'A bestseller by Yuval Noah Harari.', NULL, 450, 19.99, 100, 'Hardcover edition.', 'sapiens-book.jpg', 2.00, 3.99),

-- Toys - Board Games
('Catan Board Game', 'Strategic resource-building game.', 'Fun for families and friends.', 'L', 800, 49.99, 30, 'Ages 10+', 'catan-game.jpg', 5.00, 7.99),

-- Automotive - Car Parts
('Car Battery 12V', 'Standard automotive battery.', 'Reliable power source for most vehicles.', 'L', 15000, 89.99, 40, 'Free installation available.', 'car-battery.jpg', 5.00, 20.00),

-- Pet Supplies - Cat Food
('Grain-Free Wet Cat Food', 'Tasty and nutritious cat food.', 'Made with real meat and no artificial additives.', NULL, 150, 2.99, 200, 'Pack of 12 cans.', 'wet-cat-food.jpg', 0.00, 5.99),

-- Health & Wellness - Supplements
('Omega-3 Fish Oil', 'Heart health supplement.', 'Rich in EPA and DHA for brain and heart support.', NULL, 100, 19.99, 150, '120 softgels.', 'omega-3.jpg', 2.00, 3.99),

-- Beauty - Cosmetics
('Natural Makeup Kit', 'Complete set of makeup essentials.', 'Includes foundation, mascara, eyeshadow, and blush.', 'M', 300, 49.99, 70, 'Cruelty-free.', 'makeup-kit.jpg', 5.00, 10.00),

-- Sports & Fitness - Camping
('Sleeping Bag -0°C', 'Cold weather sleeping bag.', 'Lightweight and compressible for travel.', 'XL', 1200, 59.99, 25, 'Suitable for winter camping.', 'sleeping-bag.jpg', 5.00, 15.00),

-- Groceries - Drinks
('Organic Green Tea', 'Loose leaf green tea.', 'Antioxidant-rich and refreshing.', NULL, 200, 8.99, 120, '200g pack.', 'green-tea.jpg', 0.00, 3.99),

-- Industrial Tools
('Digital Multimeter', 'Precision tool for measuring voltage and current.', 'Used by electricians and engineers.', 'S', 300, 39.99, 40, 'Auto-ranging display.', 'multimeter.jpg', 0.00, 5.00);


INSERT INTO product (
    prod_id,
    prod_name,
    prod_desc,
    prod_long_desc,
    prod_size,
    prod_weight,
    prod_price,
    prod_on_hand,
    prod_comments,
    prod_image,
    prod_discount,
    prod_ship_cost
) VALUES

-- prod_id = 39
(39, 'Apple Watch Ultra 2', 'Premium smartwatch for fitness and outdoor use.', 'GPS, ECG, blood oxygen monitoring, and water-resistant up to 100 meters.', 'S', 61, 799.99, 45, 'Top-tier health tracking features.', 'apple-watch-ultra.jpg', 50.00, 10.00),

-- prod_id = 40
(40, 'HP Pavilion 15 Laptop', 'Mid-range Windows laptop for daily use.', 'Intel i5 processor, 8GB RAM, 256GB SSD, great for students and home office.', 'L', 1600, 699.99, 30, 'Lightweight and durable.', 'hp-pavilion-laptop.jpg', 30.00, 15.00),

-- prod_id = 41
(41, 'Dyson V15 Cordless Vacuum', 'High-performance cordless vacuum cleaner.', 'Digital motor, laser illumination to detect dust, lightweight and easy to use.', 'XL', 6000, 699.99, 15, 'Ideal for carpets and hardwood floors.', 'dyson-v15-vacuum.jpg', 50.00, 25.00),

-- prod_id = 42
(42, 'Le Creuset Cast Iron Dutch Oven', 'Classic cookware for stews, soups, and baking.', 'Enamel-coated cast iron retains heat and is oven-safe up to 500°F.', 'L', 6200, 349.95, 20, 'Available in multiple colors.', 'le-creuset-dutch-oven.jpg', 25.00, 20.00),

-- prod_id = 43
(43, 'Nike Air Max 270', 'Popular men''s running shoes.', 'Air-cushion sole, breathable upper, stylish and comfortable.', 'M', 300, 150.00, 80, 'Unisex size options available.', 'nike-airmax-shoes.jpg', 15.00, 10.00),

-- prod_id = 44
(44, 'Women''s Leather Handbag', 'Elegant handbag with shoulder strap.', 'Made from genuine leather, spacious interior with zip closure.', 'M', 800, 129.99, 50, 'Perfect for work or evening events.', 'women-leather-handbag.jpg', 10.00, 10.00),

-- prod_id = 45
(45, 'The Hobbit - J.R.R. Tolkien', 'Classic fantasy novel.', 'A journey through Middle-earth filled with adventure and magic.', NULL, 400, 12.99, 100, 'Paperback edition.', 'the-hobbit-book.jpg', 1.00, 3.99),

-- prod_id = 46
(46, 'LEGO Star Wars Death Star', 'Detailed LEGO model set.', 'Includes 4,016 pieces and multiple minifigures.', 'XL', 2500, 499.99, 25, 'Recommended for ages 16+', 'lego-death-star.jpg', 25.00, 15.00),

-- prod_id = 47
(47, 'Petco Premium Dog Bed', 'Orthopedic dog bed for comfort.', 'Supports joints and provides restful sleep for senior dogs.', 'L', 3500, 89.99, 40, 'Washable cover included.', 'dog-bed.jpg', 10.00, 20.00),

-- prod_id = 48
(48, 'Garnier SkinActive Night Cream', 'Night moisturizer for glowing skin.', 'Deep hydration formula with hyaluronic acid.', NULL, 50, 14.99, 150, 'For all skin types.', 'garnier-night-cream.jpg', 2.00, 5.00),

-- prod_id = 49
(49, 'Coleman Sundome Tent', '2-person camping tent.', 'Quick setup, weather-resistant fabric, compact storage.', 'XL', 2800, 79.99, 30, 'Perfect for weekend trips.', 'coleman-tent.jpg', 5.00, 20.00),

-- prod_id = 50
(50, 'AmazonBasics AA Rechargeable Batteries', 'Pack of 8 AA NiMH batteries.', 'Pre-charged and reusable for electronics.', NULL, 100, 12.99, 200, 'Great for cameras, toys, and controllers.', 'rechargeable-batteries.jpg', 1.00, 3.99);


INSERT INTO product (
    prod_id,
    prod_name,
    prod_desc,
    prod_long_desc,
    prod_size,
    prod_weight,
    prod_price,
    prod_on_hand,
    prod_comments,
    prod_image,
    prod_discount,
    prod_ship_cost
) VALUES
(51, 'Samsung Galaxy Tab S9', 'High-end Android tablet.', '12.4" display, S Pen included, powerful performance.', 'L', 630, 899.99, 40, 'Great for work and entertainment.', 'galaxy-tab-s9.jpg', 75.00, 10.00),
(52, 'Lenovo Yoga Slim 7 Pro', 'Lightweight Windows laptop.', 'AMD Ryzen processor, long battery life.', 'L', 1300, 999.99, 25, 'Perfect for professionals on the go.', 'lenovo-yoga-laptop.jpg', 50.00, 15.00),
(53, 'Sony Bravia XR A80J OLED TV', 'OLED smart TV.', 'Stunning picture quality, voice control, Google Assistant.', 'XXL', 23000, 2299.99, 10, 'Top-tier home cinema experience.', 'sony-oled-tv-2.jpg', 0.00, 50.00),
(54, 'GoPro HERO12 Black', 'Action camera for adventurers.', '4K video, waterproof, voice control.', 'S', 150, 479.99, 30, 'Ideal for sports and travel.', 'gopro-hero12.jpg', 30.00, 10.00),
(55, 'Bose SoundLink Revolve+', 'Portable Bluetooth speaker.', '360-degree sound, great bass, long battery life.', 'M', 900, 299.95, 50, 'Perfect for parties and outdoor use.', 'bose-revolve-speaker.jpg', 20.00, 10.00),
(56, 'IKEA MALM Dresser', 'Wooden dresser with 6 drawers.', 'Modern design, easy to assemble.', 'XL', 30000, 149.99, 15, 'Available in white and black.', 'ikea-malm-dresser.jpg', 10.00, 75.00),
(57, 'Cuisinart Chef''s Classic Skillet', 'Cast iron skillet.', 'Even heat distribution, durable construction.', 'M', 2000, 59.99, 60, 'Oven-safe up to 500°F.', 'cuisinart-skillet.jpg', 5.00, 10.00),
(58, 'Men''s Oxford Dress Shoes', 'Classic leather dress shoes.', 'Comfortable fit, polished finish.', 'M', 800, 89.99, 70, 'Suitable for office and formal events.', 'oxford-dress-shoes.jpg', 10.00, 10.00),
(59, 'Women''s Denim Jacket', 'Versatile blue denim jacket.', 'Button-up front, two chest pockets.', 'L', 600, 49.99, 100, 'Casual and stylish look.', 'denim-jacket-women.jpg', 5.00, 7.99),
(60, 'The Lord of the Rings Trilogy', 'Three-book set by J.R.R. Tolkien.', 'Epic fantasy series about Middle-earth.', NULL, 1200, 39.99, 80, 'Paperback boxed set.', 'lotr-trilogy.jpg', 5.00, 3.99),
(61, 'Monopoly Board Game', 'Classic board game of real estate trading.', 'Fun for families and friends.', 'L', 700, 24.99, 90, 'Recommended for ages 8+', 'monopoly-game.jpg', 2.00, 5.99),
(62, 'Petco Chicken & Rice Dog Food', 'Dry food for adult dogs.', 'Nutritious blend with real chicken.', NULL, 12000, 34.99, 50, 'Grain-free option available.', 'dog-food-chicken.jpg', 3.00, 10.00),
(63, 'Nivea Moisturizing Body Lotion', 'Daily body lotion for dry skin.', 'Absorbs quickly, keeps skin soft.', NULL, 200, 8.99, 150, '200ml bottle.', 'nivea-body-lotion.jpg', 1.00, 5.00),
(64, 'Coleman Roadtrip Grill', 'Portable propane grill.', 'Perfect for camping or tailgating.', 'XL', 12000, 199.99, 20, 'Easy setup and cleanup.', 'coleman-grill.jpg', 15.00, 25.00),
(65, 'AmazonBasics USB Type-C to USB Type-C 2.0 Charger Cable', 'Fast charging cable.', 'Compatible with many devices.', 'S', 50, 8.99, 300, '1-meter length.', 'usb-c-cable.jpg', 1.00, 3.99),
(66, 'Canon PIXMA TS3420 Printer', 'Compact inkjet printer.', 'Wireless printing and scanning.', 'M', 5000, 79.99, 40, 'Great for home use.', 'canon-printer-ts3420.jpg', 10.00, 15.00),
(67, 'Apple MagSafe Charger', 'Wireless charging pad for iPhone.', 'Efficient magnetic alignment.', 'S', 100, 39.00, 100, 'Works with MagSafe-compatible iPhones.', 'magsafe-charger.jpg', 5.00, 10.00),
(68, 'KitchenAid Stand Mixer', 'Professional-grade kitchen mixer.', 'Multiple attachments, powerful motor.', 'XL', 11000, 429.99, 10, 'Popular among bakers.', 'kitchenaid-mixer.jpg', 30.00, 30.00),
(69, 'Dyson Airwrap Styler', 'Hair styling tool.', 'Uses air to curl, dry, and smooth hair.', 'M', 1500, 549.99, 15, 'Includes multiple attachments.', 'dyson-airwrap.jpg', 50.00, 15.00),
(70, 'Fitbit Charge 5 Fitness Tracker', 'Health tracking smartband.', 'Heart rate, sleep, stress monitoring.', 'S', 40, 179.95, 60, 'Water-resistant up to 50 meters.', 'fitbit-charge5.jpg', 20.00, 10.00),

(71, 'Google Nest Hub (2nd Gen)', 'Smart display with Google Assistant.', '10.1" touchscreen, ambient EQ.', 'M', 800, 129.99, 50, 'Great for smart home control.', 'nest-hub-2nd-gen.jpg', 10.00, 10.00),
(72, 'HP OfficeJet Pro 9025e All-in-One Printer', 'Office printer with scanning and copying.', 'Wi-Fi enabled, automatic document feeder.', 'L', 8000, 249.99, 20, 'Good for small businesses.', 'hp-officejet-printer.jpg', 25.00, 20.00),
(73, 'Anker PowerCore 20000mAh Portable Charger', 'High-capacity power bank.', 'Fast charging for phones and tablets.', 'M', 350, 29.99, 150, 'Includes micro-USB cable.', 'anker-powerbank.jpg', 3.00, 5.00),
(74, 'Belkin BoostCharge Wireless Charging Pad', 'Qi-certified wireless charger.', 'Charges smartphones and earbuds.', 'S', 120, 19.99, 120, 'Non-slip surface.', 'belkin-wireless-charger.jpg', 2.00, 5.00),
(75, 'AmazonBasics AA Batteries (8-Pack)', 'Standard alkaline batteries.', 'Long shelf life, reliable power.', NULL, 200, 6.99, 200, 'Packaged in recyclable materials.', 'aa-batteries-pack.jpg', 0.00, 3.99),
(76, 'Echo Show 8 (2nd Gen)', 'Smart display with Alexa.', '8" HD screen, video calling, music.', 'M', 600, 129.99, 60, 'Ideal for kitchens or bedrooms.', 'echo-show-8.jpg', 10.00, 10.00),
(77, 'TP-Link Archer AX50 Wi-Fi 6 Router', 'Dual-band wireless router.', 'Faster speeds, improved network capacity.', 'M', 600, 79.99, 30, 'Great for home networks.', 'tplink-router-ax50.jpg', 10.00, 15.00),
(78, 'Logitech MX Master 3S Mouse', 'Wireless ergonomic mouse.', 'Precise scrolling, customizable buttons.', 'S', 150, 99.99, 40, 'Compatible with Mac and PC.', 'logitech-mouse-mx3s.jpg', 15.00, 10.00),
(79, 'SanDisk 128GB MicroSD Card', 'Memory card for phones and cameras.', 'Class 10, UHS-I speed rating.', 'XS', 5, 14.99, 100, 'Great for expanding storage.', 'sandisk-microsd-card.jpg', 2.00, 3.99),
(80, 'Western Digital My Passport 2TB External Hard Drive', 'Portable storage device.', 'USB 3.0, password protection.', 'M', 300, 79.99, 25, 'Ideal for backups and file transfers.', 'wd-my-passport-drive.jpg', 10.00, 10.00),

(81, 'Honeywell HEPA Air Purifier', 'Room air purifier.', 'Removes dust, pollen, smoke, and odors.', 'L', 12000, 149.99, 20, 'Quiet operation.', 'honeywell-air-purifier.jpg', 15.00, 25.00),
(82, 'Hamilton Beach 2-Slice Toaster', 'Simple toaster with wide slots.', 'Adjustable shade settings.', 'M', 2000, 29.99, 60, 'Easy to clean crumb tray.', 'hamilton-beach-toaster.jpg', 3.00, 10.00),
(83, 'iRobot Roomba j7+ Robot Vacuum', 'Smart robot vacuum cleaner.', 'Auto-empty base, obstacle detection.', 'M', 3800, 699.99, 10, 'App-controlled cleaning.', 'irobot-roomba-vacuum.jpg', 50.00, 30.00),
(84, 'Philips Norelco Electric Shaver', 'Wet/dry rechargeable shaver.', 'Multi-directional heads for close shave.', 'S', 200, 89.99, 40, 'Travel case included.', 'philips-electric-shaver.jpg', 10.00, 10.00),
(85, 'Bissell Pet Hair Eraser Vacuum', 'Vacuum for pet owners.', 'Specialized tools for removing pet hair.', 'L', 5000, 129.99, 25, 'Works on carpets and upholstery.', 'bissell-pet-vacuum.jpg', 15.00, 20.00),
(86, 'Dremel 4000 Rotary Tool Kit', 'Versatile DIY tool.', 'Multiple attachments for cutting, sanding, grinding.', 'M', 1500, 129.99, 15, 'Great for crafts and repairs.', 'dremel-tool-kit.jpg', 10.00, 15.00),
(87, 'Black+Decker Drill/Driver Kit', 'Power drill with accessories.', '12V cordless, lightweight, compact.', 'L', 3000, 59.99, 30, 'Battery and charger included.', 'blackdecker-drill.jpg', 5.00, 20.00),
(88, 'Ryobi Expand It Trimmer Attachment Kit', 'Garden tool attachment system.', 'Converts to trimmer, edger, cultivator.', 'L', 2500, 49.99, 20, 'For Ryobi ONE+ power tools.', 'ryobi-trimmer-kit.jpg', 5.00, 15.00),
(89, 'Craftsman V20 Cordless Lawn Mower', 'Electric push lawn mower.', 'Self-propelled, adjustable height.', 'XL', 25000, 299.99, 10, 'Battery and charger included.', 'craftsman-lawn-mower.jpg', 25.00, 50.00),
(90, 'John Deere Riding Lawn Mower', 'Gas-powered riding mower.', '42-inch cutting deck, comfortable seat.', 'XXL', 20000, 1999.99, 5, 'Ideal for large lawns.', 'john-deere-lawn-mower.jpg', 100.00, 100.00),

(91, 'Blue Buffalo Wilderness Dry Cat Food', 'High-protein cat food.', 'Real chicken, no grains, supports muscle health.', NULL, 12000, 44.99, 35, 'Suitable for indoor cats.', 'blue-buffalo-cat-food.jpg', 5.00, 10.00),
(92, 'Whiskas Wet Cat Food Variety Pack', 'Assorted flavors of wet cat food.', 'Meat-rich recipes your cat will love.', NULL, 80, 19.99, 100, 'Pack of 12 cans.', 'whiskas-cat-food-pack.jpg', 2.00, 7.99),
(93, 'Frisco Plush Cat Bed', 'Soft and cozy bed for cats.', 'Donut-style with raised edges.', 'M', 1000, 24.99, 60, 'Machine washable cover.', 'frisco-cat-bed.jpg', 3.00, 10.00),
(94, 'Cat Tree with Scratching Posts', 'Multi-level climbing tower.', 'Encourages exercise and scratching.', 'XL', 15000, 129.99, 15, 'Assembly required.', 'cat-tree-scratching-post.jpg', 15.00, 30.00),
(95, 'TropiClean Shed Control Cat Shampoo', 'Shampoo for shedding cats.', 'Natural ingredients, reduces loose fur.', NULL, 500, 12.99, 80, 'Made in the USA.', 'tropiclean-cat-shampoo.jpg', 2.00, 10.00),
(96, 'Frontline Plus Flea & Tick Treatment', 'Monthly topical flea treatment.', 'Effective for dogs and cats.', NULL, 50, 59.99, 40, 'Veterinarian recommended.', 'frontline-plus-treatment.jpg', 5.00, 10.00),
(97, 'Furminator deShedding Tool', 'Brush for reducing pet shedding.', 'Works on dogs and cats.', 'S', 200, 24.99, 70, 'Reduces loose undercoat.', 'furminator-brush.jpg', 3.00, 10.00),
(98, 'Greenies Regular Dental Treats for Dogs', 'Chew treats for dental health.', 'Freshens breath and cleans teeth.', NULL, 300, 34.99, 50, 'For medium-sized dogs.', 'greenies-dog-treats.jpg', 5.00, 10.00),
(99, 'Kong Classic Dog Toy', 'Durable rubber chew toy.', 'Can be stuffed with peanut butter.', 'M', 100, 14.99, 100, 'Helps prevent destructive chewing.', 'kong-dog-toy.jpg', 2.00, 5.00),
(100, 'Petco Reusable Poop Bags', 'Biodegradable dog waste bags.', 'Odor-sealing, leak-proof.', 'S', 200, 12.99, 150, 'Roll of 15 bags.', 'petco-poop-bags.jpg', 1.00, 5.00),

(101, 'Vitacost Organic Coconut Oil', 'Cold-pressed coconut oil.', 'Multipurpose beauty and cooking oil.', NULL, 450, 12.99, 80, 'Virgin unrefined oil.', 'vitacost-coconut-oil.jpg', 1.00, 5.00),
(102, 'Now Foods Vitamin C 1000mg', 'Immune support supplement.', 'Non-GMO, gluten-free formula.', NULL, 100, 14.99, 120, '100 capsules per bottle.', 'now-vitamin-c.jpg', 1.00, 3.99),
(103, 'Nature’s Way Echinacea Capsules', 'Herbal immune support.', 'Promotes wellness during cold season.', NULL, 100, 11.99, 90, 'Alcohol-free extract.', 'natureway-echinacea.jpg', 1.00, 3.99),
(104, 'Solimo Fiber Gummies', 'Digestive health gummies.', 'Prebiotic fiber for gut health.', NULL, 150, 9.99, 100, 'Tasty apple flavor.', 'solimo-fiber-gummies.jpg', 1.00, 5.00),
(105, 'Theraflu ExpressMax Severe Cold', 'Cold and flu relief powder.', 'Relieves congestion, cough, and sore throat.', NULL, 30, 8.99, 150, 'One packet per dose.', 'theraflu-cold-relief.jpg', 1.00, 3.99),
(106, 'Arm & Hammer Toothpaste Whitening', 'Whitening toothpaste.', 'With baking soda, fresh mint flavor.', NULL, 100, 4.99, 200, 'Fights plaque and bad breath.', 'arm-hammer-toothpaste.jpg', 0.50, 3.99),
(107, 'CVS Health Digital Thermometer', 'Medical thermometer.', 'Quick and accurate readings.', NULL, 50, 6.99, 100, 'Includes protective cap.', 'cvs-thermometer.jpg', 0.00, 5.00),
(108, 'Beurer IL50 Infrared Lamp', 'Heat therapy lamp.', 'Relieves muscle pain and stiffness.', 'L', 2000, 79.99, 15, 'Ideal for back and neck pain.', 'beurer-heat-lamp.jpg', 10.00, 15.00),
(109, 'Medline Reusable Face Mask', '3-layer fabric face mask.', 'Washable and breathable.', 'S', 20, 2.99, 300, 'Pack of 5 masks.', 'medline-face-mask.jpg', 0.00, 3.99),
(110, 'First Aid Only Essentials Kit', 'Basic first aid kit.', 'Includes bandages, antiseptic wipes, and gloves.', 'M', 500, 12.99, 50, 'Great for home or car.', 'first-aid-kit.jpg', 1.00, 5.00),

(111, 'Olay Regenerist Micro-Sculpting Cream', 'Anti-aging moisturizer.', 'Hydrates and firms skin.', NULL, 50, 24.99, 70, 'Dermatologist tested.', 'olay-regenerist-cream.jpg', 5.00, 10.00),
(112, 'Maybelline Great Lash Mascara', 'Classic mascara for lashes.', 'Lengthens and volumizes.', NULL, 100, 8.99, 150, 'Water-resistant formula.', 'maybelline-mascara.jpg', 1.00, 5.00),
(113, 'Revlon ColorStay Foundation', 'Long-lasting makeup foundation.', 'Oil-free, won’t cake or crack.', NULL, 50, 14.99, 80, 'Available in 20 shades.', 'revlon-foundation.jpg', 2.00, 10.00),
(114, 'NYX Professional Makeup Eyeshadow Palette', '16-color eyeshadow palette.', 'Matte and shimmer shades.', 'M', 200, 12.99, 60, 'Cruelty-free brand.', 'nyx-eyeshadow-palette.jpg', 2.00, 10.00),
(115, 'Neutrogena Hydro Boost Water Gel', 'Facial moisturizer.', 'Hydrates for up to 8 hours.', NULL, 50, 18.99, 90, 'Oil-free and non-comedogenic.', 'neutrogena-hydroboost.jpg', 3.00, 10.00),
(116, 'L’Oréal Elvive Full Resist Fibra-Keratin Conditioner', 'Conditioner for damaged hair.', 'Strengthens and protects strands.', NULL, 400, 6.99, 120, 'Smooth and shiny results.', 'loreal-conditioner.jpg', 1.00, 7.99),
(117, 'Dove Deep Moisture Body Wash', 'Moisturizing shower gel.', 'Rich lather, nourishing ingredients.', NULL, 400, 5.99, 150, 'Paraben-free formula.', 'dove-body-wash.jpg', 0.00, 7.99),
(118, 'Old Spice Swagger Deodorant', 'Men’s antiperspirant.', 'Fresh scent, all-day protection.', NULL, 70, 5.99, 100, 'Stick applicator.', 'old-spice-deodorant.jpg', 0.00, 5.00),
(119, 'Gillette Fusion5 Men’s Razor', '5-blade shaving system.', 'Precision trimmer and lubrication strip.', 'S', 100, 12.99, 80, 'Refillable cartridges.', 'gillette-fusion5-razor.jpg', 2.00, 10.00),
(120, 'Nivea Men Sensitive Post-Shave Balm', 'After-shave care.', 'Calms irritation and redness.', NULL, 100, 6.99, 90, 'Fast-absorbing formula.', 'nivea-post-shave-balm.jpg', 1.00, 7.99),

(121, 'Nike Dri-FIT Running Shorts', 'Breathable athletic shorts.', 'Lightweight, moisture-wicking fabric.', 'M', 200, 35.00, 100, 'Unisex size options.', 'nike-running-shorts.jpg', 5.00, 10.00),
(122, 'Under Armour HeatGear Compression Shirt', 'Performance compression top.', 'Supports muscles and wicks sweat.', 'L', 250, 45.00, 70, 'Ideal for workouts.', 'underarmour-shirt.jpg', 7.00, 10.00),
(123, 'Adidas Ultraboost 22 Running Shoes', 'High-performance running shoes.', 'Responsive cushioning, knit upper.', 'M', 350, 190.00, 50, 'Available in multiple colors.', 'adidas-ultraboost-shoes.jpg', 20.00, 15.00),
(124, 'Decathlon Quechua MH500 Tent', 'Family camping tent.', 'Weatherproof, spacious interior.', 'XL', 4000, 149.99, 20, 'Sleeps up to 5 people.', 'decathlon-tent.jpg', 10.00, 25.00),
(125, 'Coleman SportSun Canopy', 'Outdoor canopy shelter.', 'UVGuard protection, quick setup.', 'XL', 8000, 129.99, 15, 'Great for picnics and events.', 'coleman-canopy.jpg', 10.00, 30.00),
(126, 'Garmin Edge 1030 Bike Computer', 'GPS cycling computer.', 'Tracks route, elevation, speed.', 'M', 150, 499.99, 10, 'Bluetooth and ANT+ connectivity.', 'garmin-bike-computer.jpg', 50.00, 15.00),
(127, 'Schwinn Discover Hybrid Bike', 'All-purpose hybrid bicycle.', 'Steel frame, 21-speed gears.', 'XXL', 30000, 399.99, 10, 'Perfect for commuting and trails.', 'schwinn-bike.jpg', 30.00, 50.00),
(128, 'Nike Alpha Training Football Gloves', 'Football gloves for grip and comfort.', 'Tacky palms, flexible fit.', 'S', 100, 40.00, 60, 'Great for practice and games.', 'nike-football-gloves.jpg', 5.00, 10.00),
(129, 'Wilson NCAA Replica Football', 'Official-size football.', 'Synthetic leather, great grip.', 'M', 400, 24.99, 80, 'Ideal for backyard play.', 'wilson-football.jpg', 2.00, 10.00),
(130, 'Speedo Unisex Swim Goggles', 'Swimming goggles.', 'Anti-fog lenses, adjustable strap.', 'S', 100, 14.99, 100, 'Suitable for pool and open water.', 'speedo-swim-goggles.jpg', 2.00, 10.00),

(131, 'Campbell’s Chicken Noodle Soup (10.75 oz)', 'Ready-to-eat canned soup.', 'Classic comfort food.', NULL, 300, 1.99, 200, 'Microwaveable bowl included.', 'campbells-soup.jpg', 0.00, 3.99),
(132, 'Kellogg’s Frosted Flakes Cereal', 'Sweet breakfast cereal.', 'Crunchy corn flakes.', NULL, 500, 3.99, 150, 'Contains vitamins and minerals.', 'kelloggs-flakes.jpg', 0.00, 5.99),
(133, 'Heinz Ketchup Bottle', 'Tomato ketchup.', 'Original taste loved by kids.', NULL, 600, 2.99, 100, 'Refrigerate after opening.', 'heinz-ketchup.jpg', 0.00, 5.99),
(134, 'Quaker Oats Quick 1-Minute Oatmeal', 'Instant oatmeal packets.', 'Healthy and convenient breakfast.', NULL, 400, 4.99, 120, 'Pack of 10 servings.', 'quaker-oatmeal.jpg', 0.00, 5.99),
(135, 'Diet Coke 12oz Can', 'Zero-calorie carbonated beverage.', 'Classic Coca-Cola taste without sugar.', NULL, 370, 1.49, 300, 'Sugar-free and caffeine-free.', 'diet-coke-can.jpg', 0.00, 3.99),
(136, 'Minute Maid 100% Apple Juice', 'Pure apple juice.', 'No added sugar.', NULL, 640, 2.49, 90, '100% juice from concentrate.', 'minute-maid-apple-juice.jpg', 0.00, 5.99),
(137, 'Ben & Jerry’s Chocolate Ice Cream', 'Premium chocolate ice cream.', 'Rich and creamy texture.', NULL, 470, 4.99, 60, 'Pint container.', 'benjerry-chocolate.jpg', 0.00, 7.99),
(138, 'Hebrew National Beef Franks', 'Hot dogs made from beef.', 'Smoked for extra flavor.', NULL, 450, 3.99, 80, 'Pack of 10 links.', 'hebrew-national-hotdogs.jpg', 0.00, 7.99),
(139, 'Ore-Ida Golden Crinkles Fries', 'Frozen potato fries.', 'Crispy and golden.', NULL, 750, 2.99, 100, 'Oven-ready, no preparation needed.', 'oreida-fries.jpg', 0.00, 7.99),
(140, 'Colgate Total Toothpaste', 'Antibacterial toothpaste.', 'Fights cavities and plaque.', NULL, 120, 4.49, 150, 'Fluoride included.', 'colgate-total-toothpaste.jpg', 0.00, 5.99),

(141, 'WD Red Plus NAS HDD 4TB', 'Hard drive for network storage.', 'Designed for NAS systems.', 'M', 500, 149.99, 20, 'Optimized for reliability and scalability.', 'wd-red-nas-drive.jpg', 15.00, 15.00),
(142, 'ASUS TUF Gaming GeForce RTX 4070', 'Graphics card for gaming.', 'Ray tracing, DLSS 3 support.', 'XL', 1500, 699.99, 10, 'High-end GPU for modern titles.', 'asus-rtx4070-gpu.jpg', 50.00, 25.00),
(143, 'Corsair Vengeance LPX 16GB DDR4 RAM', 'Desktop memory module.', '3200MHz, low profile.', 'S', 50, 69.99, 50, 'Great for multitasking and gaming.', 'corsair-ddr4-ram.jpg', 5.00, 10.00),
(144, 'Kingston A2000 NVMe SSD 1TB', 'Internal solid-state drive.', 'Fast boot times and load speeds.', 'S', 50, 89.99, 60, 'PCIe M.2 interface.', 'kingston-a2000-ssd.jpg', 10.00, 10.00),
(145, 'Razer DeathAdder V3 Pro Mouse', 'Gaming mouse with RGB lighting.', 'High precision sensor, customizable buttons.', 'M', 70, 99.99, 40, 'Wireless and wired modes.', 'razer-deathadder-mouse.jpg', 15.00, 10.00),
(146, 'Logitech G Pro X Mechanical Keyboard', 'Mechanical gaming keyboard.', 'Swappable switches, RGB lighting.', 'L', 1000, 149.99, 30, 'Customizable typing experience.', 'logitech-gpro-keyboard.jpg', 20.00, 15.00),
(147, 'EVGA Supernova 650 G+ PSU', 'Power supply unit for PCs.', 'Fully modular, 80+ Gold certified.', 'M', 1500, 129.99, 20, 'Quiet and efficient.', 'evga-psu-supernova.jpg', 15.00, 20.00),
(148, 'NZXT H710i Mid-Tower Case', 'Computer case with RGB fans.', 'Spacious build area, cable management.', 'XL', 8000, 149.99, 10, 'Tempered glass side panel.', 'nzxt-h710i-case.jpg', 15.00, 30.00),
(149, 'Cooler Master Hyper 212 Black CPU Cooler', 'Air cooler for processors.', 'High-performance heatsink and fan.', 'M', 700, 49.99, 25, 'Improves thermal efficiency.', 'coolermaster-hyper212.jpg', 5.00, 15.00),
(150, 'Sabrent 4-Bay SATA Hard Drive Dock', 'External docking station.', 'Supports 2.5” and 3.5” drives.', 'L', 1200, 59.99, 15, 'Plug-and-play installation.', 'sabrent-hard-drive-dock.jpg', 5.00, 20.00);

-- SET SQL_SAFE_UPDATES = 0;productPRIMARYprod_id
-- delete from product;


select * from product
order by prod_id;