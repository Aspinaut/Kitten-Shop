class Item < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  has_many :join_table_carts_items
  has_many :carts, through: :join_table_carts_items

  has_many :join_table_items_orders
  has_many :orders, through: :join_table_items_orders
<<<<<<< HEAD

  has_one_attached :picture
=======
  has_many :line_items, dependent: :nullify #on supprime pas le line_item mais remettre la référence (qui apparaît dans le line_item) à 0 si le produit n'existe plus
>>>>>>> development
end
