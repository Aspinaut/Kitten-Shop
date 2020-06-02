class JoinTableCartsItem < ApplicationRecord
  belongs_to :item
  belongs_to :cart
  validates :item,
    uniqueness: true
end
