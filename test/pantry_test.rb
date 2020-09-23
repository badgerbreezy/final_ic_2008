require 'minitest/autorun'
require 'minitest/pride'
require 'Pry'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test
  def test_it_exists_and_has_attributes
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese",   unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})

    assert_instance_of Pantry, pantry
    assert_instance_of Ingredient, ingredient1
    assert_equal "Cheese", ingredient1.name
    assert_equal "oz", ingredient1.unit
    assert_equal 50, ingredient1.calories
    assert_equal ({}), pantry.stock
  end

  def test_it_can_check_stock
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese",   unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})

    assert_equal 0, pantry.stock_check(ingredient1)
  end


end
