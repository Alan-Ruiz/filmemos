class User < ApplicationRecord

  belongs_to :category, optional: true
  has_many :works
  # has_one_attached :photo

end
