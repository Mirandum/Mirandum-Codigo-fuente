class ProductosController < ApplicationController
	def index
		@articles = Producto.all
	end

	def show
		@producto = Producto.find(params[:id])
	end

	def new
		@producto = Producto.new
	end

	def create
		@producto = Producto.new(referencia:  params[:producto][:referencia], 
			descripcion: params[:producto][:descripcion],
			precio: params[:producto][:precio],
			color: params[:producto][:color],
			devuelto: params[:producto][:false],
			imagen: params[:producto][:imagen])
		@producto.save
		redirect_to @producto
	end
end