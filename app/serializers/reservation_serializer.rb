class ReservationSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :tour
end
