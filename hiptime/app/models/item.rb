class Item < ApplicationRecord
  validates :title, :description, presence: true
  validates :title, uniqueness: true
end
