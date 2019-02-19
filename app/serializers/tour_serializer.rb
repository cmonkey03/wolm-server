class TourSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :description, :price
  has_many :reservations
  has_many :users, through: :reservations
end
