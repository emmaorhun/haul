class Location < ApplicationRecord

  validates_format_of :postal_code,:with => /[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]/, :on => :create
  belongs_to :mall

end
