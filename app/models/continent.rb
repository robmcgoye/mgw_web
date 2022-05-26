class Continent < ApplicationRecord
  
  has_many :categories
  
  validates :name, presence: true, length: { minimum: 1, maximum: 125 }  
  
end