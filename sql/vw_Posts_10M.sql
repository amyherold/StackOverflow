use StackOverflow
go

create view vw_Posts_10M
 as select * from Posts_10M
go

print 'view vw_Posts_10M created'

