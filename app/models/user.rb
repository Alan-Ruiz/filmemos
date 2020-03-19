class User < ApplicationRecord

  has_many :works
  has_one_attached :photo

end
