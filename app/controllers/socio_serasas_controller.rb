class SocioSerasasController < ApplicationController
  before_action :set_socio_serasa, only: [:show, :edit, :update, :destroy]

  # GET /socio_serasas
  # GET /socio_serasas.json
  def index
    @socio_serasas = SocioSerasa.all
  end

  # GET /socio_serasas/1
  # GET /socio_serasas/1.json
  def show
  end

  # GET /socio_serasas/new
  def new
    @socio_serasa = SocioSerasa.new
  end

  # GET /socio_serasas/1/edit
  def edit
  end

  # POST /socio_serasas
  # POST /socio_serasas.json
  def create
    @socio_serasa = SocioSerasa.new(socio_serasa_params)

    respond_to do |format|
      if @socio_serasa.save
        format.html { redirect_to @socio_serasa, notice: 'Socio serasa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_serasa }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_serasa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_serasas/1
  # PATCH/PUT /socio_serasas/1.json
  def update
    respond_to do |format|
      if @socio_serasa.update(socio_serasa_params)
        format.html { redirect_to @socio_serasa, notice: 'Socio serasa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_serasa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_serasas/1
  # DELETE /socio_serasas/1.json
  def destroy
    @socio_serasa.destroy
    respond_to do |format|
      format.html { redirect_to socio_serasas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_serasa
      @socio_serasa = SocioSerasa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_serasa_params
      params.require(:socio_serasa).permit(:interessado_id, :arquivo)
    end
end
