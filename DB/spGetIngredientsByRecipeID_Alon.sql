USE [igroup135_test2]
GO
/****** Object:  StoredProcedure [dbo].[spGetIngredientsByRecipeID_Alon]    Script Date: 13/01/2023 22:15:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Alonm>
-- Create date: <06-01-2022>
-- Description:	<get ingerients by recipe>
-- =============================================
ALTER PROCEDURE [dbo].[spGetIngredientsByRecipeID_Alon]
	-- Add the parameters for the stored procedure here
	@recipeid smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM ingredientsInRecipes_Alon INR INNER JOIN Ingredients_Alon IA on INR.ingredientId = IA.id
	WHERE recipeId = @recipeid
END


