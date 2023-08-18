class Product < ApplicationRecord
  searchkick
  validates :title, :description, presence: true
end
