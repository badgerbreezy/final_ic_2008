class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def enough_ingredients_for?(recipe)
    # require 'Pry';binding.pry
    recipe.ingredients_required.each do |ingredient, amount|
      if amount >= @stock[ingredient]
        return true
      else
        return false
      end
    end

  end
end
