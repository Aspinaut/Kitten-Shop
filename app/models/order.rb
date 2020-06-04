class Order < ApplicationRecord
  belongs_to :user
  has_many :join_table_items_orders
  has_many :items, through: :join_table_items_orders
  after_create :thanks_send
  after_create :new_order_send


  def thanks_send
    OrderMailer.thanks_email(self).deliver_now
  end

  def new_order_send
    OrderMailer.new_order_email(self).deliver_now
  end

end
