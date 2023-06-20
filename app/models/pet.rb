class Pet < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_one_attached :photo
  has_many :reservations
  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :content, presence: true
end
