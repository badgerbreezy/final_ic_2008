require 'minitest/autorun'
require 'minitest/pride'
require 'Pry'
require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

class CookBookTest < Minitest::Test
  def test_it_exists_and_has_attributes
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({name: "Cheese",   unit: "oz", calories: 50})
    cookbook = CookBook.new

    assert_instance_of Ingredient, ingredient1
    assert_instance_of Recipe, recipe1
    assert_instance_of CookBook, cookbook
    assert_equal [], cookbook.recipes
  end
end
