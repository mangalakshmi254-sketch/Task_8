----A stored procedure in SQL is a named collection of SQL statements .
create procedure emp_datas
as
begin 
select * from war
end

exec emp_datas

------PASSING IN -PARAMETER\
alter procedure emp_datas @v_age int
as
begin 
select * from war  where w_age=@v_age
end

exec emp_datas @v_age=19

---------PASSING OUT PARAMETER
alter procedure emp_data @ww_age int=19, @EMPCOUNT INT OUT
as
begin 
select @EMPCOUNT=COUNT(*) from war  where w_age=@ww_age
end

DECLARE @COUNT INT
exec emp_data 19, @COUNT OUT
select @count






