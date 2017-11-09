class Ingredient < ApplicationRecord
  has_many :doses
  #before_destroy :check_for_cocktails, through: :doses
  validates :name, uniqueness: true, presence: true
end

#def check_for_cocktail
#  unless cocktail.nil?
   # self.errors[:base] << "Cannot delete shipment while its invoice exists."
 #   return false
 # end
#end

