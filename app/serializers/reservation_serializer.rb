class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :tour
  belongs_to :user
  belongs_to :tour
end
