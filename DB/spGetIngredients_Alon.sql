USE [igroup135_test2]
GO
/****** Object:  StoredProcedure [dbo].[spGetIngredients_Alon]    Script Date: 13/01/2023 22:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Alonm>
-- Create date: <06-01-22>
-- Description:	<get all ingredients>
-- =============================================
ALTER PROCEDURE [dbo].[spGetIngredients_Alon] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Ingredients_Alon
END
