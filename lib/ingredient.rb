class Ingredient
  attr_reader :name, :unit, :calories
  def initialize(traits)
    @name = traits[:name]
    @unit = traits[:unit]
    @calories = traits[:calories]
  end
end
