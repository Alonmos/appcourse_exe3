USE [igroup135_test2]
GO
/****** Object:  StoredProcedure [dbo].[spAddIngredientToRecipe_Alon]    Script Date: 13/01/2023 22:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Alonm>
-- Create date: <06-01-2023>
-- Description:	<insert the ingredients to recipe>
-- =============================================
ALTER PROCEDURE [dbo].[spAddIngredientToRecipe_Alon]
	-- Add the parameters for the stored procedure here
	@recipeid smallint,
	@ingredientid smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [ingredientsInRecipes_Alon]
	(
	[recipeId],
	[ingredientId]
	)
	VALUES
	(
	@recipeid,
	@ingredientid
	)
END
