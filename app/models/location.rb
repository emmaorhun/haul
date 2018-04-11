class Location < ApplicationRecord

  validates_format_of :postal_code,:with => /[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]/, :on => :create
  validates :street_address, presence: true
  validates :province, presence: true
  validates :city, presence: true
  
  belongs_to :mall

end
