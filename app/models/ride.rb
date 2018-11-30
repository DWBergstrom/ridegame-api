class Ride < ApplicationRecord
  has_many :finishes
  has_many :users, through: :finishes
end
