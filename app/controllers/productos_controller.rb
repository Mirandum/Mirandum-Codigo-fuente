class ProductosController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]
	before_action :set_article, except:[:index, :new, :create]

	def index
		@articles = Producto.all
	end

	def show
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
			imagen: params[:producto][:imagen])
		if @producto.save
		redirect_to @producto
		else
			render :new
		end
	end

	def destroy

		@producto.destroy
		redirect_to productos_path
	end

	def update
	
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

	private

	def set_article
		@producto = Producto.find(params[:id])
	end

end