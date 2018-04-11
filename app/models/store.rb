class Store < ApplicationRecord

  validates :name, presence: true

  has_many :products
  has_many :variables

  belongs_to :mall

end
