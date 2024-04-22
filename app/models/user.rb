class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :experiences, foreign_key: :host_id


  validates :email, uniqueness: true
  validates :role, presence: true

  enum role: { traveller: 0, host: 1 }

  before_create :set_default_role

  private
  def set_default_role
    self.role ||= :traveller
  end


end
