class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :zipcode, :bio
  has_many :reservations
  has_many :tours, through: :reservations
end
