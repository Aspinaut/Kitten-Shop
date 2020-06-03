module CurrentCart
	private	

	def set_cart
		@cart =Cart.find_by(id: session[:cart_id]) || Cart.create #on cherche à récupérer un panier par son ID, s'il n'existe pas on créé un
		session[:cart_id] ||= @cart.id		#on met à jour la valeur en session sauf si elle existe déjà
	end
end