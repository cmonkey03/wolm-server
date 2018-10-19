class User < ApplicationRecord
  has_secure_password

  has_many :reservations
  has_many :tours, through: :reservations

  validates :username, uniqueness: { case_sensitive: false }
  validates :username, length: { within: 5..16 }
  validates :zipcode, numericality: { only_integer: true, greater_than: 0}
  validates :zipcode, length: { is: 5 }
  validates :bio, length: { maximum: 200 }

end
