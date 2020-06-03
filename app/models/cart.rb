class Cart < ApplicationRecord
  belongs_to :user
  has_many :join_table_carts_items
  has_many :items, through: :join_table_carts_items
  has_many :line_items, dependent: :destroy #on met has_one si on a UN SEUL ARTICLE par panier//le dependent destroy permet de supprimer en cascade les line_items associés à un panier s'il vient d'être supprimé


end
