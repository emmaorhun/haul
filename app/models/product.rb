class Product < ApplicationRecord

  validates :stock, presence: true
  belongs_to :store
  has_many :variabless
  has_and_belongs_to_many :carts

end
