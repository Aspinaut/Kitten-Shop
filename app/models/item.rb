class Item < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_url, presence: true
  has_many :join_table_carts_items
  has_many :carts,through: :join_table_carts_items

end
