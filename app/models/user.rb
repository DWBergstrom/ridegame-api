# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  # finishes allows for points tracking for users
  has_many :finishes
  has_many :rides, through: :finishes
end
