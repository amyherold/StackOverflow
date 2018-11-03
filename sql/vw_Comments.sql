use StackOverflow
go

create view vw_Comments
 as select * from Comments
go

print 'view vw_comments created' 
