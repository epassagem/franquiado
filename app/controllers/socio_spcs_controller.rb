class SocioSpcsController < ApplicationController
  before_action :set_socio_spc, only: [:show, :edit, :update, :destroy]

  # GET /socio_spcs
  # GET /socio_spcs.json
  def index
    @socio_spcs = SocioSpc.all
  end

  # GET /socio_spcs/1
  # GET /socio_spcs/1.json
  def show
  end

  # GET /socio_spcs/new
  def new
    @socio_spc = SocioSpc.new
  end

  # GET /socio_spcs/1/edit
  def edit
  end

  # POST /socio_spcs
  # POST /socio_spcs.json
  def create
    @socio_spc = SocioSpc.new(socio_spc_params)

    respond_to do |format|
      if @socio_spc.save
        format.html { redirect_to @socio_spc, notice: 'Socio spc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_spc }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_spc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_spcs/1
  # PATCH/PUT /socio_spcs/1.json
  def update
    respond_to do |format|
      if @socio_spc.update(socio_spc_params)
        format.html { redirect_to @socio_spc, notice: 'Socio spc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_spc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_spcs/1
  # DELETE /socio_spcs/1.json
  def destroy
    @socio_spc.destroy
    respond_to do |format|
      format.html { redirect_to socio_spcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_spc
      @socio_spc = SocioSpc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_spc_params
      params.require(:socio_spc).permit(:interessado_id, :arquivo)
    end
end
