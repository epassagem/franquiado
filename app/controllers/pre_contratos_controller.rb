class PreContratosController < ApplicationController
  before_action :set_pre_contrato, only: [:show, :edit, :update, :destroy]

  # GET /pre_contratos
  # GET /pre_contratos.json
  def index
    @pre_contratos = PreContrato.all
  end

  # GET /pre_contratos/1
  # GET /pre_contratos/1.json
  def show
  end

  # GET /pre_contratos/new
  def new
    @pre_contrato = PreContrato.new
  end

  # GET /pre_contratos/1/edit
  def edit
  end

  # POST /pre_contratos
  # POST /pre_contratos.json
  def create
    @pre_contrato = PreContrato.new(pre_contrato_params)

    respond_to do |format|
      if @pre_contrato.save
        format.html { redirect_to @pre_contrato, notice: 'Pre contrato was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pre_contrato }
      else
        format.html { render action: 'new' }
        format.json { render json: @pre_contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_contratos/1
  # PATCH/PUT /pre_contratos/1.json
  def update
    respond_to do |format|
      if @pre_contrato.update(pre_contrato_params)
        format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pre_contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_contratos/1
  # DELETE /pre_contratos/1.json
  def destroy
    @pre_contrato.destroy
    respond_to do |format|
      format.html { redirect_to pre_contratos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_contrato
      @pre_contrato = PreContrato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_contrato_params
      params.require(:pre_contrato).permit(:interessado_id, :arquivo)
    end
end
