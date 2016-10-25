class ProductosController < ApplicationController
	def index
		@articles = Producto.all
	end

	def show
		@producto = Producto.find(params[:id])
	end
end