class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart
  has_many :orders
  after_create :create_cart, :set_admin_to_false

  private

  def set_admin_to_false
    self.update(is_admin: false)
  end

  def create_cart
    @cart = Cart.create(user_id: self.id)
  end
end
