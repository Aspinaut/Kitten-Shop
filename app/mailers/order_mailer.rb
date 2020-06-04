class OrderMailer < ApplicationMailer
  default from: 'no-reply@thekittyproject.fr'

  def thanks_email(order)
    @order = order
    @url  = 'https://thp-kitten-shop.herokuapp.com/'

    mail(to: @order.user.email, subject: 'Merci de nous faire confiance !')
  end

  def new_order_email(order)
    @order = order

    mail(to: 'pelletierjanvier@gmail.com', subject: 'Nouvelle commande')
  end
  
end
