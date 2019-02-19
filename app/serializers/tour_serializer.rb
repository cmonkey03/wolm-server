class TourSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :price, :description
  has_many :reservations
  has_many :users, through: :reservations
end
