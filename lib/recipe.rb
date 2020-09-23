class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] += amount
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    total_calories = Hash.new
    @ingredients_required.each do |ingredient, amount|
      total_calories[ingredient] = ingredient.calories * amount
    end
    total_calories.values.sum
  end
end
