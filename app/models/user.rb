class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart
  has_many :orders

  after_create :create_cart, :set_admin_to_false, :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
  private

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  private

  def create_cart
    @cart = Cart.create(user_id: self.id)
  end
end
