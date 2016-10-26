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

	def edit
		@producto = Producto.find(params[:id])
	end

	def create
		@producto = Producto.new(referencia:  params[:producto][:referencia], 
			descripcion: params[:producto][:descripcion],
			precio: params[:producto][:precio],
			color: params[:producto][:color],
			devuelto: params[:producto][:false],
			imagen: params[:producto][:imagen])
		if @producto.save
		redirect_to @producto
		else
			render :new
		end
	end

	def destroy
		@producto = Producto.find(params[:id])
		@producto.destroy
		redirect_to productos_path
	end

	def update
		@producto = Producto.find(params[:id])	
		if @producto.update(referencia:  params[:producto][:referencia], 
			descripcion: params[:producto][:descripcion],
			precio: params[:producto][:precio],
			color: params[:producto][:color],
			devuelto: params[:producto][:false],
			imagen: params[:producto][:imagen])	 
			redirect_to @producto
		else
			render :edit
		end
	end
end