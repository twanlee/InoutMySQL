use classicmodels;
delimiter //
create procedure getCusByID( in cusID int)
begin
select * from customers where customerNumber = cusID;
end; //
delimiter //
call getCusByID(175);

delimiter //
create procedure getCustomersCountByID(
in in_city varchar(50),
out total int)
begin 
select count(customerNumber) into total from customers where city = in_city;
end //
delimiter //
call getCustomersCountByID('Lyon',@total);
select @total;

delimiter //
create procedure setCounter(
inout counter int,
in inc int)
begin 
set counter = counter + inc;
end //
delimiter //
set @counter = 1;
call setCounter(@counter, 5);
select @counter;