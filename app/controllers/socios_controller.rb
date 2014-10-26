class SociosController < ApplicationController
  before_action :set_socio, only: [:show, :edit, :update, :destroy]

  respond_to :html, :xml, :json

  def index
    @socios = Socio.all
    respond_with(@socios)
  end

  def show
    respond_with(@socio)
  end

  def new
    @socio = Socio.new
    respond_with(@socio)
  end

  def edit
  end

  def create
    @socio = Socio.new(socio_params)
    @socio.save
    respond_with(@socio)
  end

  def update
    @socio.update(socio_params)
    respond_with(@socio)
  end

  def destroy
    @socio.destroy
    respond_with(@socio)
  end

  private
    def set_socio
      @socio = Socio.find(params[:id])
    end

    def socio_params
      params.require(:socio).permit(:nombre, :apellido_paterno, :apellido_materno, :sexo, :dni, :celular, :fecha_de_nacimiento, :email, :direccion, :distrito)
    end
end
