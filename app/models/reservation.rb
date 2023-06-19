class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  validates :date, presence: true
end
