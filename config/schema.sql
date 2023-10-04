--Create table products
CREATE TABLE IF NOT EXISTS products (
 id INT NOT NULL PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 brand VARCHAR(255) NOT NULL,
 price FLOAT NOT NULL,
 imageSrc VARCHAR(255) NOT NULL,
 rating FLOAT NOT NULL,
 description VARCHAR(255) NOT NULL,
 sizes ENUM("Small", "Medium", "Large", "Extra Large"),
 reviews VARCHAR(255) NOT NULL,
 product_type VARCHAR(255) NOT NULL
);


--Insert Value products
INSERT INTO PRODUCTS VALUES( 
1, "Adicolor Classics Hoodie", "H&M", 19.99, "https://i.ibb.co/YW9RQ16/hoodie-model.jpg", 4.5, "The Adicolor Classics Hoodie is a versatile and stylish addition to your wardrobe...", '["This hoodie is incredibly comfortable and durable. I love its simple yet stylish design. Its perfect for chilly weather.",  "The Adicolor Classics Hoodie is a must-have. Its soft, warm, and the fit is just right. Highly recommended!", "Im really impressed with the quality of this hoodie. Its worth every penny."]',  '["Small", "Medium", "Large", "Extra Large"]', "Hoodie");

INSERT INTO PRODUCTS VALUES(
2, "Blue Jeans", "Levi's", 20.5,"https://i.ibb.co/tz7s9WB/jeans-model.jpg", 4.2,  "Our Blue Jeans are a classic choice for any wardrobe...",  '["Ive been wearing these jeans for years, and they never disappoint. Comfortable fit and durable.",  "The Blue Jeans by Levis are my go-to choice. Great quality and stylish.",  "These jeans are a great value for the price. I highly recommend them."]','["28W", "30W", "32W", "34W"]', "Jeans" );

INSERT INTO PRODUCTS VALUES(
3, "Leather-Effect Trench Coat", "H&M", 32.15, "https://i.ibb.co/jrNcNVS/Coats.png", 4.7, "Stay elegant and warm with our Leather-Effect Trench Coat from H&M...",   '["I absolutely love this trench coat. Its stylish, comfortable, and keeps me warm.","The Leather-Effect Trench Coat is a great addition to my wardrobe. It looks much more expensive than it is.", "H&M did a great job with this coat. The quality is impressive."]','["Small", "Medium", "Large", "Extra Large"]', "Coat");

INSERT INTO PRODUCTS VALUES(
4, "Quilted Jacket", "Uniqlo", 25.85, "https://i.ibb.co/4PFgDmt/jaket-model.jpg ", 4.5, "Stay warm and stylish with our Quilted Jacket from Uniqlo...",  '["I love this jacket. Its warm and fits perfectly.", "The Quilted Jacket by Uniqlo is a great addition to my wardrobe. Its stylish and comfortable.", "I highly recommend this jacket. Its a great value for the price."]', '["Small", "Medium", "Large", "Extra Large"]',"Jacket");

INSERT INTO PRODUCTS VALUES(
5, "Oxford Cotton Shirt", "Lacoste", 12.99, "https://i.ibb.co/thNNkPC/shirt-model.jpg ", 4.0, "Our Oxford Cotton Shirt from Lacoste is a classic choice for a polished look...",  '["This shirt is comfortable and looks great.","The Oxford Cotton Shirt by Lacoste is a quality product. Im satisfied with my purchase.","Ive been wearing this shirt for years, and it never disappoints."]','["Small", "Medium", "Large", "Extra Large"]',"Shirt");

INSERT INTO PRODUCTS VALUES(
6, "Short Pants Simply Elegant", "Adidas", 20.5, "https://i.ibb.co/Fh8w988/shorts-model.jpg", 4.2, "Stay comfortable and stylish with our Short Pants Simply Elegant from Adidas...", '["These shorts are incredibly comfortable. I wear them for workouts and leisure.",  "The Short Pants Simply Elegant by Adidas are my favorite shorts. Great fit and quality.", "I highly recommend these shorts. They are worth every penny."]','["28W", "30W", "32W", "34W"]', "Shorts");

INSERT INTO PRODUCTS VALUES(
7, "Jacquard Knit Sweater", "Uniqlo", 18.25, "https://i.ibb.co/P1Yg8D8/sweater-model.jpg", 4.4, "Keep warm and stylish with our Jacquard Knit Sweater from Uniqlo...",  '["I love this sweater. Its warm and looks great.", "The Jacquard Knit Sweater by Uniqlo is a quality product. Im satisfied with my purchase.", "Ive been wearing this sweater for years, and it never disappoints."]','["Small", "Medium", "Large", "Extra Large"]',  "Sweater");

INSERT INTO PRODUCTS VALUES(
8, "Adyant T-Shirts", "Adidas", 20.5, "https://i.ibb.co/mvWXqFK/tshirt-model.jpg ", 4.1, "Adyant T-Shirts by Adidas are a perfect addition to your casual wardrobe...",  '["These t-shirts are comfortable and stylish. I wear them regularly.",  "The Adyant T-Shirts by Adidas are my go-to choice. Great fit and quality.", "I highly recommend these t-shirts. They are worth every penny."]','["Small", "Medium", "Large", "Extra Large"]', "T-Shirt");


--Create table About
CREATE TABLE IF NOT EXISTS teams(
 id CHAR(3) NOT NULL PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 role VARCHAR(255) NOT NULL,
 instagram VARCHAR(255) NOT NULL,
 linkedin VARCHAR(255) NOT NULL,
 github VARCHAR(255) NOT NULL,
 image VARCHAR(255) NOT NULL
);

--Insert Value About
INSERT INTO teams VALUES(
01, "Diana", "Quality Assurance", "https://www.instagram.com/dianamsrh", "https://www.linkedin.com/in/diana-masruroh", "https://github.com/dianamsrh", "https://i.ibb.co/3rt4hBt/diana.jpg");

INSERT INTO teams VALUES(
02, "Yoko", "Front End Engineer", "https://www.instagram.com/zyxkoo", "https://www.linkedin.com/in/yoko-khmrdn", "https://github.com/ykkhmrdn", "https://i.ibb.co/BPvj4VV/yoko.jpg ");

INSERT INTO teams VALUES(
03, "Septi", "Quality Assurance", "https://www.instagram.com/septianaanf", "https://www.linkedin.com/in/septiana-aulia-nur-fadlina-b72564284", "https://github.com/septianaanf", "https://i.ibb.co/fQ8zdJ2/septi.jpg ");

INSERT INTO teams VALUES(
04, "Prada", "Back End Engineer", "https://www.instagram.com/pradadipa", "https://www.linkedin.com/in/prada-dipa-0142842104", "https://github.com/pradadipa", "https://i.ibb.co/X3pfkZh/prada.png");

INSERT INTO teams VALUES(
05, "Hilda", "Back End Engineer", "https://www.instagram.com/hilwoody", "https://www.linkedin.com/in/hildaayumeylia", "https://github.com/myhilda", "https://i.ibb.co/5sH1PKM/hilda.jpg");


--Create table form
CREATE TABLE IF NOT EXISTS form (
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 message TEXT NOT NULL
);

--Insert manual value form
INSERT INTO form(name, email, message)
 VALUES('Prada', 'prada.dipa@gmail.com', 'Saya Prada');
