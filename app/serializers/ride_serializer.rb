class RideSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo_url, :description, :distance, :points
end
