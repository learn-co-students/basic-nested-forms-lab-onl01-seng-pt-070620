class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  #
  # def ingredients_attributes=(attributes)
  #   attributes.each do |attr|
  #     self.ingredients.build(attr)
  #   end
  # end
end
