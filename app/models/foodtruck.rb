class Foodtruck < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :bookings
  has_many :ftphotos
  validates :name, :price, :description, :capacity, :category, presence: true

  pg_search_scope :search_by_name_and_description_and_user,
    against: [ :name, :description ],
    associated_against: {
      user: [ :username]},
    using: {
      tsearch: { prefix: true }
          }
end
