class Item < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  has_many :join_table_carts_items
  has_many :carts, through: :join_table_carts_items

  has_many :join_table_items_orders
  has_many :orders, through: :join_table_items_orders

  has_one_attached :picture
end
