class Product < ApplicationRecord
  validates :title, :description, presence: true
end
