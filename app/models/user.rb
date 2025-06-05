# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :postal_code, presence: true, length: { maximum: 10 }
  validates :address,     presence: true, length: { maximum: 100 }
  validates :bio,         length: { maximum: 500 }
end
