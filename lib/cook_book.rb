class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredient_list = []
    @recipes.each do |recipe|
      recipe.ingredients_required.each do |ingredient, amount|
        ingredient_list << ingredient.name
      end
    end
    ingredient_list.uniq
  end
end
