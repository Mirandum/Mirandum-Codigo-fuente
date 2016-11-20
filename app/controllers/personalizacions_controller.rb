class PersonalizacionsController < ApplicationController
  before_action :set_personalizacion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authenticate_admin!, only: [:destroy, :edit, :update, :index]
  # GET /personalizacions
  # GET /personalizacions.json
  def index
    @personalizacions = Personalizacion.all
  end

  # GET /personalizacions/1
  # GET /personalizacions/1.json
  def show
  end

  # GET /personalizacions/new
  def new
    @personalizacion = Personalizacion.new
  end

  # GET /personalizacions/1/edit
  def edit
  end

  # POST /personalizacions
  # POST /personalizacions.json
  def create
    @personalizacion = current_user.personalizacions.new(personalizacion_params)

    respond_to do |format|
      if @personalizacion.save
        format.html { redirect_to @personalizacion, notice: 'Personalizacion was successfully created.' }
        format.json { render :show, status: :created, location: @personalizacion }
      else
        format.html { render :new }
        format.json { render json: @personalizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personalizacions/1
  # PATCH/PUT /personalizacions/1.json
  def update
    respond_to do |format|
      if @personalizacion.update(personalizacion_params)
        format.html { redirect_to @personalizacion, notice: 'Personalizacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @personalizacion }
      else
        format.html { render :edit }
        format.json { render json: @personalizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personalizacions/1
  # DELETE /personalizacions/1.json
  def destroy
    @personalizacion.destroy
    respond_to do |format|
      format.html { redirect_to personalizacions_url, notice: 'Personalizacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personalizacion
      @personalizacion = Personalizacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personalizacion_params
      params.require(:personalizacion).permit(:fechaSolicitada, :descripcion, :color, :cover, :user_id)
    end
end
