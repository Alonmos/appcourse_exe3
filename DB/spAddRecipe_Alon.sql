USE [igroup135_test2]
GO
/****** Object:  StoredProcedure [dbo].[spAddRecipe_Alon]    Script Date: 13/01/2023 22:13:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Alonm>
-- Create date: <06-01-2023>
-- Description:	<add new recipe>
-- =============================================
ALTER PROCEDURE [dbo].[spAddRecipe_Alon]
	@name nvarchar (30),
	@image_url nvarchar (max),
	@cookingMethod nvarchar (250),
	@time float

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [Recipes_Alon]
	(
	[name],
	[image_url],
	[cookingMethod],
	[time]
	)
	VALUES(
	@name,
	@image_url,
	@cookingMethod,
	@time
	);
	SELECT SCOPE_IDENTITY()
END
