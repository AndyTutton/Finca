class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :checkin
      t.date :checkout
      t.references :user, null: false, foreign_key: true
      t.references :experience, null: false, foreign_key: true
      t.text :welcome_message

      t.timestamps
    end
  end
end
