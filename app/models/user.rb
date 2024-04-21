class User < ApplicationRecord
  has_many :bookings
  has_many :experiences, through: :bookings

  enum role: { traveller: 0, host: 1 }


end
