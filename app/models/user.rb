class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_secure_password

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :category, optional: true
  has_many :works
  has_one_attached :photo

end
