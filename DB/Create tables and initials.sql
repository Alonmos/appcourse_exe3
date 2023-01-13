
--Create Recipes Table
CREATE TABLE [Recipes_Alon](
	[id] smallint IDENTITY(1,1) NOT NULL,
	[name] nvarchar(30) NOT NULL,
	[image_url] nvarchar(max) NOT NULL,
	[cookingMethod] nvarchar(250) NOT NULL,
	[time] float NOT NULL,
PRIMARY KEY (id) 
)


--Create Ingredients Table
CREATE TABLE [Ingredients_Alon](
	[id] smallint IDENTITY(1,1) NOT NULL,
	[name] nvarchar(30) NOT NULL,
	[image_url] nvarchar(max) NOT NULL,
	[calories] float NOT NULL
PRIMARY KEY (id)
)


--Create IngredientsInRecipes Table
CREATE TABLE [ingredientsInRecipes_Alon](
	[recipeId] smallint FOREIGN KEY REFERENCES [Recipes_Alon](id) NOT NULL,
	[ingredientId] smallint FOREIGN KEY REFERENCES [Ingredients_Alon](id) NOT NULL
PRIMARY KEY (recipeId , ingredientId)
)



--Enter values to tables
INSERT INTO [Ingredients_Alon]
(
[name],
[image_url],
[calories]
)
VALUES
(
'Cheese',
'https://www.usdairy.com/optimize/getmedia/6ab03180-cc90-4a03-a339-13b540ecc8a5/american.jpg.jpg.aspx?format=webp',
3
)


INSERT INTO [Recipes_Alon]
(
[name],
[image_url],
[cookingMethod],
[time]
)
VALUES
(
'Pizza',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZj01Kkek1YiGGZXU94iutsz40ihtK2eUreg&usqp=CAU',
'Bake',
30
)


INSERT INTO [ingredientsInRecipes_Alon]
(
[recipeId],
[ingredientId]
)
VALUES
(
1,
1
)