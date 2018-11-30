class FinishSerializer < ActiveModel::Serializer
  attributes :id, :notes, :date, :duration
  has_one :user
  has_one :ride
end
