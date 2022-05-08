Create Database PROJECT11;
use PROJECT11;

 SET SQL_SAFE_UPDATES = 0;

Create Table customer
( customer_id INTEGER(3),
first_name CHAR(15),
Last_name CHAR(15),
Email VARCHAR(30),
Phone VARCHAR(12),
Address VARCHAR(30),
PRIMARY KEY(customer_id));

Create Table Account
( acc_num INTEGER(3),
 acc_name VARCHAR(15),
 PRIMARY KEY(acc_num));
 
 Create Table Cart
 ( cart_id INTEGER(3),
 quantity INTEGER(3),
 PRIMARY KEY(cart_id));
 
 Create Table Payment
 ( pay_id INTEGER(3),
   pay_type VARCHAR(20),
   PRIMARY KEY(pay_id));
   
   Alter Table Payment
   Add bill_total Numeric(10,2),
   Add pay_date date,
   Add customer_id INTEGER(3);
   
   Create Table Orders
   ( order_status VARCHAR(20),
    total_cost NUMERIC(3,2),
    order_id INTEGER(3),
    order_time VARCHAR(8),
    order_type VARCHAR(20),
    quantity INTEGER(3),
    packing_id INTEGER(3),
    PRIMARY KEY (order_id));
    
    Alter Table Orders
    Modify Column total_cost numeric(10,2);
    
  Alter Table Orders
  modify column order_time time;
    
    
    
    Create Table Delivery 
    ( address VARCHAR(30),
	  delivery_status VARCHAR(30),
      est_date VARCHAR(9),
      delivery_id INTEGER(3),
      delivery_fee NUMERIC(3,2),
      PRIMARY KEY (delivery_id));
      
      Alter Table Delivery
      Modify Column delivery_fee NUMERIC(10,2);
      
         ALTER TABLE Delivery
		ADD delivery_time TIME;
        
        
      
      Create Table Store
      ( store_id INTEGER(3),
       store_name VARCHAR(20),
       address VARCHAR(20),
       PRIMARY KEY(store_id));
       
       ALTER TABLE Store
       ADD p_id INTEGER(3),
       ADD State VARCHAR(20);
       
       Alter Table Store
       ADD stock VARCHAR(20);
       
       
       
       Create Table Inventory
       ( inventory_id INTEGER,
       quantity INTEGER(3),
	     product_price NUMERIC(3,2));
         
         
         Alter Table Inventory
         Modify Column product_price NUMERIC(10,2);
         
         Create Table Products
         ( p_id INTEGER(3),
		   p_name VARCHAR(20),
           PRIMARY KEY(p_id,p_name));
           
           Create Table Category
           ( category_id INTEGER(3),
           PRIMARY KEY(category_id));
           
           Create Table Manufacturer
           ( man_id INTEGER(3),
           man_name VARCHAR(20),
           PRIMARY KEY(man_id, man_name));
           
           
           Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (001, 'Nick', 'Niolet', 'noneya@gmail.com', '000-000-0000', '101 No Where Way');
           
			Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (002, 'Ronald', 'Bower', 'RonBow@gmail.com', '000-000-0000', '300 Ave. Park');
           
           	Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (003, 'Sydney', 'Crawford', 'SydCraw@gmail.com', '000-000-0000', '500 Road St.');
           
           Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (004, 'Charlie', 'Buford', 'CharBuf@gmail.com', '000-000-0000', '600 Street');
           
           Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (005, 'David', 'Blaine', 'Dblaine@gmail.com', '000-000-0000', '700 Ave.');
           
           Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (006, 'Austin', 'Zoo', 'azoo@gmail.com', '000-000-0000', '800 Pastor Rd.');
           
           Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (007, 'Emily', 'Adder', 'Eadder@gmail.com', '000-000-0000', '900 Dunne St.');
           
           Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (008, 'Ashley', 'Shroud', 'Ashroud@gmail.com', '000-000-0000', '1000 Road St.');
           
           Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (009, 'Blake', 'Zane', 'bZane@gmail.com', '000-000-0000', '1100 Avenue St.');
           
           Insert Into customer(customer_id, first_name, Last_name, Email, Phone, Address)
           Values (010, 'Samantha', 'Columbus', 'Samcolumbus@gmail.com', '000-000-0000', '1200 Place St.');
           
           
           Insert Into Account(acc_num, acc_name)
           Values(001, 'accNick');
           Insert Into Account(acc_num, acc_name)
           Values(002, 'accRonald');
           Insert Into Account(acc_num, acc_name)
           Values(003, 'accSydney');
           
           
           Insert Into Cart (cart_id, quantity)
           Values(001, 1);
             Insert Into Cart (cart_id, quantity)
           Values(002, 2);
             Insert Into Cart (cart_id, quantity)
           Values(003, 3);
           
           
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(001, 'Cash', 001, "2022-01-03", 300);
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(002, 'Credit', 002, "2022-01-03", 50);
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(003, 'Debit', 003, "2022-01-03", 30 );
           
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(004, 'Debit', 004, "2022-01-03", 25);
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(005, 'Debit', 005, "2022-01-03", 99.99);
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(006, 'Credit', 006, "2022-01-03", 15.99);
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(007, 'Debit', 007, "2022-01-03", 49.99);
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(008, 'Credit', 008, "2022-01-03", 79.99);
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(009, 'Debit', 009, "2022-01-03", 19.99);
           Insert Into Payment(pay_id, pay_type, customer_id, pay_date, bill_total)
           Values(010, 'Debit', 010, "2022-01-03", 9.99);
           
           
           Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Complete', 300, 001, "06:00:00", 'Online', 1, 001);
            Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Pending', 50, 002, "07:00:00", 'Online', 2, 002);
            Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Cancelled', 30, 003, "08:00:00", 'Online', 3, 003);
           
				Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Complete', 25, 004, "06:00:00", 'Online', 1, 004);
                 Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Complete', 99.99, 005, "07:00:00", 'Online', 3, 005);
                 Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Complete', 15.99, 006, "08:00:00", 'Online', 2, 006);
                 Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Delayed', 49.99, 007, "09:00:00", 'Online', 3, 007);
                 Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Complete', 79.99, 008, "10:00:00", 'Online', 1, 008);
                 Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Complete', 19.99, 009, "11:00:00", 'Online', 2, 009);
                 Insert Into Orders(order_status, total_cost, order_id, order_time, order_type, quantity, packing_id)
           Values('Complete', 9.99, 010, "12:00:00", 'Online', 3, 010);
           
           
           
           Update Orders
           Set order_time = "12:00:00"
           where packing_id = 001;
           

           
            Update Orders
           Set order_time = "12:00:00"
           where packing_id = 002;
           
            Update Orders
           Set order_time = "12:00:00"
           where packing_id = 003;
           
           
           
           
           Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee)
           Values('101 No Where Way', 'Complete', '4/27/2022', 001, 27.50);
            Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee)
           Values('300 Ave. Park', 'Pending', '4/30/2022', 002, 14.20);
            Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee)
           Values('500 Road St.', 'Cancelled', 'N/A', 003, 7.75);
           
           Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee, delivery_time)
           Values('600 Street', 'Complete', '1/14/2022', 004, 7.75, "07:00:00");
           Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee, delivery_time)
           Values('700 Ave.', 'Complete', '1/14/2022', 005, 7.75, "08:00:00");
           Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee, delivery_time)
           Values('800 Pastor Rd.', 'Complete', '1/14/2022', 006, 7.75, "09:00:00");
           Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee, delivery_time)
           Values('900 Dunne St.', 'Complete', '1/14/2022', 007, 7.75, "10:00:00");
           Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee, delivery_time)
           Values('1000 Road St.', 'Complete', '1/14/2022', 008, 7.75, "11:00:00");
           Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee, delivery_time)
           Values('1100 Avenue St.', 'Complete', '1/15/2022', 009, 7.75, "07:00:00");
           Insert Into Delivery(address, delivery_status, est_date, delivery_id, delivery_fee, delivery_time)
           Values('1200 Place St.', 'Complete', '1/17/2022', 010, 7.75, "08:00:00");
           
           
           
          
           
           Update Delivery
           Set delivery_time = "07:00:00"
           where delivery_id = 001;
           
            Update Delivery
           Set delivery_time = "08:00:00"
           where delivery_id=002;
           
            Update Delivery
           Set delivery_time = "09:00:00"
           where delivery_id=003;
        
           
           
           
         
           Insert Into Store(store_id, store_name, address)
           Values(001, 'First Store', '100 Commerical Ave');
           Insert Into Store(store_id, store_name, address)
           Values(002, 'Second Store', '200 Commerical Ave');
           Insert Into Store(store_id, store_name, address)
           Values(003, 'Third Store', '300 Commerical Ave');
           
           UPDATE Store
           Set p_id = 001, State = "California"
           Where store_id = 001;
           
		   UPDATE Store
           Set p_id = 002, State = "California"
           Where store_id = 002;
           
		   UPDATE Store
           Set p_id = 003, State = "California"
           Where store_id = 003;
           
           UPDATE Store
           Set stock = "no"
           Where store_id = 001 or store_id=002 or store_id=003;
           
              Insert Into Store(store_id, store_name, address, p_id, State)
           Values(004, 'Fourth Store', '400 Commerical Ave', 004, "California");
              Insert Into Store(store_id, store_name, address, p_id, State)
           Values(005, 'Fifth Store', '500 Commerical Ave', 005, "California");
              Insert Into Store(store_id, store_name, address, p_id, State)
           Values(006, 'Sixth Store', '600 Commerical Ave', 006, "California");
              Insert Into Store(store_id, store_name, address, p_id, State)
           Values(007, 'Seventh Store', '700 Commerical Ave', 007, "California");
              Insert Into Store(store_id, store_name, address, p_id, State)
           Values(008, 'Eighth Store', '800 Commerical Ave', 008, "California");
              Insert Into Store(store_id, store_name, address, p_id, State)
           Values(009, 'Ninth Store', '900 Commerical Ave', 009, "California");
              Insert Into Store(store_id, store_name, address, p_id, State)
           Values(010, 'Tenth Store', '999 Commerical Ave', 010, "California");
              
              UPDATE STORE
              Set stock = "yes"
              Where store_id = 004 or store_id = 005 
              or store_id = 006 or store_id = 007 
              or store_id = 008 or store_id = 009
              or store_id = 010;
           
           Insert Into Inventory(quantity, product_price, inventory_id)
           Values(10, 300, 001);
             Insert Into Inventory(quantity, product_price, inventory_id)
           Values(20, 50, 002);
             Insert Into Inventory(quantity, product_price, inventory_id)
           Values(30, 30, 003);
           Insert Into Inventory(quantity, product_price, inventory_id)
           Values(40, 25, 004);
           Insert Into Inventory(quantity, product_price, inventory_id)
           Values(50, 99.99, 005);
           Insert Into Inventory(quantity, product_price, inventory_id)
           Values(60, 15.99, 006);
           Insert Into Inventory(quantity, product_price, inventory_id)
           Values(70, 49.99, 007);
           Insert Into Inventory(quantity, product_price, inventory_id)
           Values(80, 79.99, 008);
           Insert Into Inventory(quantity, product_price, inventory_id)
           Values(90, 19.99, 009);
           Insert Into Inventory(quantity, product_price, inventory_id)
           Values(99, 9.99, 010);
           
           
           
           
           Insert Into Products(p_id,p_name)
           Values(001, 'Xbox');
           Insert Into Products(p_id, p_name)
           Values(002, 'Gameboy');
           Insert Into Products(p_id, p_name)
           Values(003, 'Mario Game');
            Insert Into Products(p_id, p_name)
           Values(004, 'Headphones');
            Insert Into Products(p_id, p_name)
           Values(005, 'Microphone');
            Insert Into Products(p_id, p_name)
           Values(006, 'LED Light Strip');
            Insert Into Products(p_id, p_name)
           Values(007, 'Mouse');
            Insert Into Products(p_id, p_name)
           Values(008, 'Keyboard');
            Insert Into Products(p_id, p_name)
           Values(009, 'HDMI Cable');
            Insert Into Products(p_id, p_name)
           Values(010, 'USB-C');
           
           
           
           
        
           
           
           
          
           
           
           
           
           
           Select first_name, Last_name, MAX(total_cost)
           from orders NATURAL JOIN customer NATURAL JOIN payment
           where order_id = customer_id
           and pay_date between "2022-01-01" and "2022-12-30"
           Group by first_name, Last_name;
           
	
           Select p_name, SUM(total_cost)
           from products natural join orders
           group by p_name
           order by SUM(total_cost)
           asc limit 2;
           
           Select p_name, count(quantity)
           from products natural join orders
           group by p_name
           order by count(quantity)
           asc limit 2;
           
           Select p_name, p_id
           from products natural join store
           where stock = "no" and state = "California";
           
           Select distinct delivery_id
           From delivery natural join orders
           where delivery_time >= order_time
           order by delivery_id asc;
           
           Select first_name, Last_name, SUM(bill_total)
           From payment join customer using(customer_id)
           group by first_name order by SUM(bill_total) asc;
          
          
          
          
          
          
          
          
          
          
          
          
          