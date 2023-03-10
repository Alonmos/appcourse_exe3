USE [igroup135_test2]
GO
/****** Object:  StoredProcedure [dbo].[spAddIngredient_Alon]    Script Date: 13/01/2023 22:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Alonm>
-- Create date: <06-01-22>
-- Description:	<insert ingredient>
-- =============================================
ALTER PROCEDURE [dbo].[spAddIngredient_Alon]
	-- Add the parameters for the stored procedure here
	@name nvarchar (30),
	@image_url nvarchar (max),
	@calories float

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [Ingredients_Alon]
           ([name],
            [image_url],
			[calories]
           )
     VALUES
           (@name,
           @image_url,
		   @calories
	   )
END
