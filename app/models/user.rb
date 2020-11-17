class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :challenges, through: :user_challenges

  validates :email, :encrypted_password, presence: true
  validates :email, format: { with: Devise.email_regexp }
end
