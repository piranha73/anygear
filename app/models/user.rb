class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products # lender
  has_many :bookings
  # has_many :products, through: :bookings # borrower
  has_one_attached :photo

  def lender?
    !self.products.size.zero?
  end
end

