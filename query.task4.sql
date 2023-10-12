-- TASK 4

-- MEMBUAT DB KALBE

create database kalbe;

-- MEMBUAT TABLE INVENTORY 

create table inventory (
	item_code int not null,
    item_name varchar(50) not null,
    item_price int not null,
    item_total int not null,
    
    primary key (item_code)
)

-- INSERT DATA 

insert into inventory (item_code, item_name, item_price, item_total) values 
	(2341, "Promag Table", 3000, 100), 
	(2342, "Hydro Coco 250ML", 7000, 20), 
	(2343, "Nutrive Benecol 100ML", 20000, 30),
	(2344, "Blackmoves Vit C 500Mg", 95000, 45), 
	(2345, "Entrasol Gold 370G", 90000,120)
    
    
-- MENAMPILKAN ITEM_NAME DENGAN NILAI ITEM_TOTAL TERTINGGI
     
select * from inventory order by item_total desc limit 1

UPDATE ITEM_PRICE 

WITH maxTotal AS (
	select * from inventory order by item_total desc limit 1
)

UPDATE inventory
	SET item_price = 850000
	WHERE item_code = (SELECT item_code from maxTotal)

-- MENGHAPUS ITEM_NAME DENGAN ITEM_TOTAL TERENDAH

WITH minTotal AS (
	select * from inventory order by item_total asc limit 1
)

DELETE from inventory where item_code = (SELECT item_code from minTotal);
