class SocioDadosBancosController < ApplicationController
  before_action :set_socio_dados_banco, only: [:show, :edit, :update, :destroy]

  # GET /socio_dados_bancos
  # GET /socio_dados_bancos.json
  def index
    @socio_dados_bancos = SocioDadosBanco.all
  end

  # GET /socio_dados_bancos/1
  # GET /socio_dados_bancos/1.json
  def show
  end

  # GET /socio_dados_bancos/new
  def new
    @socio_dados_banco = SocioDadosBanco.new
  end

  # GET /socio_dados_bancos/1/edit
  def edit
  end

  # POST /socio_dados_bancos
  # POST /socio_dados_bancos.json
  def create
    @socio_dados_banco = SocioDadosBanco.new(socio_dados_banco_params)

    respond_to do |format|
      if @socio_dados_banco.save
        format.html { redirect_to @socio_dados_banco, notice: 'Socio dados banco was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_dados_banco }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_dados_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_dados_bancos/1
  # PATCH/PUT /socio_dados_bancos/1.json
  def update
    respond_to do |format|
      if @socio_dados_banco.update(socio_dados_banco_params)
        format.html { redirect_to @socio_dados_banco, notice: 'Socio dados banco was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_dados_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_dados_bancos/1
  # DELETE /socio_dados_bancos/1.json
  def destroy
    @socio_dados_banco.destroy
    respond_to do |format|
      format.html { redirect_to socio_dados_bancos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_dados_banco
      @socio_dados_banco = SocioDadosBanco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_dados_banco_params
      params.require(:socio_dados_banco).permit(:interessado_id, :arquivo)
    end
end
