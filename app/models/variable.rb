class Variable < ApplicationRecord

  validates :type_of_variable, presence: true
  validates :option, presence: true

  belongs_to :store
  belongs_to :product

end
