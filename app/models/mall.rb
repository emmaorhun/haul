class Mall < ApplicationRecord

  validates :name, presence: true

  has_many :stores
  has_one :location

end
