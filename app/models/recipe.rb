class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  # def ingredients_attributes=(ingredient_attribute)
  #   ingredients_attributes.each do |ingredient_attribute|
  #     self.ingredients.build(ingredient_attributes)
  #   end
  # end
end
