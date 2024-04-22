class Booking < ApplicationRecord
  belongs_to :traveller, class_name: 'User'
  belongs_to :experience
end
