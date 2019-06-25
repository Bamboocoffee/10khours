class User < ApplicationRecord
  has_one :landing_page
  has_one :dashboard
  has_one :from_scratch
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
