# db/seeds.rb

# Destroy existing records to start with a clean slate
Booking.destroy_all
Experience.destroy_all
User.destroy_all

# Create a traveller
traveller = User.create!(
  first_name: "John",
  last_name: "Doe",
  role: "traveller"
)

# Create a host
host = User.create!(
  first_name: "Jane",
  last_name: "Smith",
  role: "host"
)

# Create an experience
experience = Experience.create!(
  title: "Exciting Eco Adventure",
  description: "Join us for an unforgettable eco adventure!"
)

# Create a booking
booking = Booking.create!(
  checkin: Date.today,
  checkout: Date.today + 7.days,
  user: traveller,
  experience: experience,
  welcome_message: "Looking forward to your stay!"
)
