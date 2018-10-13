/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [StackOverflow]
GO

/****** Object:  StoredProcedure [dbo].[usp_upd_posts_createdate]    Script Date: 10/13/2018 1:23:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[usp_upd_posts_createdate]
as
begin
	Begin Tran
		update Posts_10M
		set creationdate = CURRENT_TIMESTAMP
		where id = 26

		select displayname
		from Users				
		order by displayname
		option (MAXDOP 1)
		
	commit
		
end
GO


