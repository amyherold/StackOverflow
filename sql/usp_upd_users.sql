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

/****** Object:  StoredProcedure [dbo].[usp_upd_users]    Script Date: 10/13/2018 1:23:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[usp_upd_users]
as
begin
	Begin Tran
		update users
		set downvotes = 50
		where id = 16

		select LastEditorDisplayName
		from Posts_10M
		order by LastEditorDisplayName

	commit
		
end
GO


