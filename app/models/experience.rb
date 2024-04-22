class Experience < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :bookings
  has_many :users, through: :bookings
end
