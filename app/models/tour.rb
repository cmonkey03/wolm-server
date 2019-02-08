class Tour < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations

  validates :price, numericality: { only_integer: true, greater_than: 0 }
  validates :description, length: { within: 30..200 }
  validate :start_time, :startFuture?
  validate :end_time, :endFuture?

  def startFuture?
    if start_time < ::DateTime.current
      errors.add(:start_time, "can't be in the past")
    end
  end

  def endFuture?
    if end_time < start_time
      errors.add(:end_time, "cannot be before start time")
    end
  end

  def self.tours_by_start_time
    Tour.all.sort_by &:start_time
  end

end
