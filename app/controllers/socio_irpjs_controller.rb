class SocioIrpjsController < ApplicationController
  before_action :set_socio_irpj, only: [:show, :edit, :update, :destroy]

  # GET /socio_irpjs
  # GET /socio_irpjs.json
  def index
    @socio_irpjs = SocioIrpj.all
  end

  # GET /socio_irpjs/1
  # GET /socio_irpjs/1.json
  def show
  end

  # GET /socio_irpjs/new
  def new
    @socio_irpj = SocioIrpj.new
  end

  # GET /socio_irpjs/1/edit
  def edit
  end

  # POST /socio_irpjs
  # POST /socio_irpjs.json
  def create
    @socio_irpj = SocioIrpj.new(socio_irpj_params)

    respond_to do |format|
      if @socio_irpj.save
        format.html { redirect_to @socio_irpj, notice: 'Socio irpj was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_irpj }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_irpj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_irpjs/1
  # PATCH/PUT /socio_irpjs/1.json
  def update
    respond_to do |format|
      if @socio_irpj.update(socio_irpj_params)
        format.html { redirect_to @socio_irpj, notice: 'Socio irpj was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_irpj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_irpjs/1
  # DELETE /socio_irpjs/1.json
  def destroy
    @socio_irpj.destroy
    respond_to do |format|
      format.html { redirect_to socio_irpjs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_irpj
      @socio_irpj = SocioIrpj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_irpj_params
      params.require(:socio_irpj).permit(:interessado_id, :arquivo)
    end
end
