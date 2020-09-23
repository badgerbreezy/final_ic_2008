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
    expected = []
    recipe.ingredients_required.each do |ingredient, amount|
      if @stock[ingredient] >= amount
        expected << true
      else
        expected << false
      end
    end
    expected.all?
  end
end
