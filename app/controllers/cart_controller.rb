class CartController < ApplicationController

	def add 
		id = params[:id]
		#si el carrito ya ha sido creado usarlo si no crear un nuevo carrito
		if session[:cart] then
			 cart = session[:cart]
		else
			session[:cart]={}
			cart = session[:cart]
		end

		#si el producto ya ha sido agregado l carrito simplemente se incrementa si no cantidad a 1

		if cart[id] then 
			cart[id]= cart[id]+1
		else
			cart[id]=1

		end 
		redirect_to :action=> :index
	end 

	def clearCart
		session[:cart] =nil
		redirect_to :action => :index
	end

	def index
		if session[:cart] then
			@cart= session[:cart]
		else
			@cart= {}
		end	
	end	
end
