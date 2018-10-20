class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :zipcode, :email, :bio
  has_many :reservations
  has_many :tours, through: :reservations
end
