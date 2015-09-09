How would you return all the recipes in your database?
recipes = Recipe.all

How would you return all the comments in your database?
comments = Comment.all

How would you return the most recent recipe posted in your database?
latest_recipe = Recipe.order(id: :desc).last
alternatively = Recipe.last

How would you return all the comments of the most recent recipe in your database?
comments = Comment.where(id: Recipe.last.id)

How would you return the most recent comment of all your comments?
latest_comment = Comment.last

How would you return the recipe associated with the most recent comment in your database?
that_recipe = Recipe.where(id: Comment.last.recipe_id)

How would you return all comments that include the string brussels in them?
Comment.all.where("body ILIKE ?", '%brussels%')
