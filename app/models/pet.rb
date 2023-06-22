class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reservations, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :content, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
