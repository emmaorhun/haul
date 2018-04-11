class User < ApplicationRecord

  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :username, presence: true, uniqueness: true
  validates :password, length: {in: 4..20}, presence: true

  has_one :cart

end
