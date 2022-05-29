class Link < ApplicationRecord

  belongs_to :category

  validates :title, presence: true, length: { minimum: 1, maximum: 128 }  
  validates :url, http_url: true
  validates :sort, numericality: true

end