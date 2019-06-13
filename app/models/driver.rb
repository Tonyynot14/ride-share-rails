class Driver < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :email, presence: true

  belongs_to :organization
  has_many :rides
  has_many :schedule_windows
  has_many :vehicles ,dependent: :destroy


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def generate_auth_token
    token = SecureRandom.hex
    self.update_columns(auth_token: token, token_created_at: Time.zone.now)
    token
  end

  def invalidate_auth_token
    self.update_columns(auth_token: nil, token_created_at: nil)
  end



end
