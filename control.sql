create proc GetnumAcciDat
@a date
as
select count(*) from accident where dateac=@a;



create proc GetnumAcciHour
@a int,
@b int
as
select count(*) from accident where datepart(HOUR,dateac) between @a and @b;


create proc UpdateDam
as
update accident set dommage=dommage*0.05;
