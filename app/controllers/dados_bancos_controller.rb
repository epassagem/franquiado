class DadosBancosController < ApplicationController
  before_action :set_dados_banco, only: [:show, :edit, :update, :destroy]

  # GET /dados_bancos
  # GET /dados_bancos.json
  def index
    @dados_bancos = DadosBanco.all
  end

  # GET /dados_bancos/1
  # GET /dados_bancos/1.json
  def show
  end

  # GET /dados_bancos/new
  def new
    @dados_banco = DadosBanco.new
  end

  # GET /dados_bancos/1/edit
  def edit
  end

  # POST /dados_bancos
  # POST /dados_bancos.json
  def create
    @dados_banco = DadosBanco.new(dados_banco_params)

    respond_to do |format|
      if @dados_banco.save
        format.html { redirect_to @dados_banco, notice: 'Dados banco was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dados_banco }
      else
        format.html { render action: 'new' }
        format.json { render json: @dados_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dados_bancos/1
  # PATCH/PUT /dados_bancos/1.json
  def update
    respond_to do |format|
      if @dados_banco.update(dados_banco_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dados_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dados_bancos/1
  # DELETE /dados_bancos/1.json
  def destroy
    @dados_banco.destroy
    respond_to do |format|
      format.html { redirect_to dados_bancos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dados_banco
      @dados_banco = DadosBanco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dados_banco_params
      params.require(:dados_banco).permit(:interessado_id, :arquivo)
    end
end
