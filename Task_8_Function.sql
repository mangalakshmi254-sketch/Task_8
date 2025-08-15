------------FUNCTION-----------------
-----------USER DEFINED FUNCTION
-----------1) SCALER FUNCTION
-----------2)TABLE VALUED FUNCTION

-----------1) SCALER FUNCTION
--IF ITS RETURN SINGLE VALUE..
----We have to DBO schema wheneveruse function.
---------SCALAR FUNCTION------Example 1
create function dbo.add_numbers(@a int, @b int)
RETURNS int
BEGIN

RETURN @a + @b
END

select dbo.add_numbers (3,4)


--------------Example -2
select * from WAR
create function dbo.ElderORyounger(@age int)
RETURNS char(20)
BEGIN
DECLARE @E_Y char(40)
if(@age>=18)
   SET @E_Y='Major'
   else
   set @E_Y='Minor'
RETURN @E_y
END

select dbo.elderoryounger(23)


select w_name,dbo.elderoryounger(w_age) as Age from war



