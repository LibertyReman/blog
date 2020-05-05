class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true

  attachment :image
end
