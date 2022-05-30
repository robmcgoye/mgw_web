class Category < ApplicationRecord
  
  belongs_to :continent, optional: true
  has_many :links, dependent: :destroy
  accepts_nested_attributes_for :links, allow_destroy: true

  has_many :subfolders, class_name: "Category", foreign_key: "folder_id", dependent: :destroy
  belongs_to :folder, class_name: "Category", optional: true

  validates :title, presence: true, length: { minimum: 1, maximum: 125 }  
  validates :sort, numericality: true

  default_scope { order(sort: :asc) }

end