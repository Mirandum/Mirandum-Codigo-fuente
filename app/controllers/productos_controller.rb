class ProductosController < ApplicationController
	before_action :authenticate_user!, only: [:show, :index]
	before_action :set_producto, except:[:index, :new, :create]
	before_action :authenticate_admin!, only: [:destroy, :edit, :create, :new]

	def index
		@search = Producto.search(params[:q])
		@articles = @search.result
	end

	def show
		@producto= Producto.find(params[:id])
		@comment = Comment.new
	end

	def new
		@producto = Producto.new
	end

	def edit
	end

	def create
		@producto = Producto.new(referencia:  params[:producto][:referencia], 
			descripcion: params[:producto][:descripcion],
			precio: params[:producto][:precio],
			color: params[:producto][:color],
			devuelto: params[:producto][:false],
			tipo: params[:producto][:tipo],
			cover: params[:producto][:cover])
		

		if @producto.save
			redirect_to @producto
		else
			render :new
		end
	end

	def destroy
		@producto= Producto.find(params[:id])
		@producto.destroy
		redirect_to productos_path
	end

	def update
	
		if @producto.update(referencia:  params[:producto][:referencia], 
			descripcion: params[:producto][:descripcion],
			precio: params[:producto][:precio],
			color: params[:producto][:color],
			devuelto: params[:producto][:false],
			 
			tipo: params[:producto][:tipo],
			cover: params[:producto][:cover] )	 
			redirect_to @producto
		else
			render :edit
		end
	end

	private

	def set_producto
		@producto = Producto.find(params[:id])
	end

end