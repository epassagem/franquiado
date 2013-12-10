class SocioRgsController < ApplicationController
  before_action :set_socio_rg, only: [:show, :edit, :update, :destroy]

  # GET /socio_rgs
  # GET /socio_rgs.json
  def index
    @socio_rgs = SocioRg.all
  end

  # GET /socio_rgs/1
  # GET /socio_rgs/1.json
  def show
  end

  # GET /socio_rgs/new
  def new
    @socio_rg = SocioRg.new
  end

  # GET /socio_rgs/1/edit
  def edit
  end

  # POST /socio_rgs
  # POST /socio_rgs.json
  def create
    @socio_rg = SocioRg.new(socio_rg_params)

    respond_to do |format|
      if @socio_rg.save
        format.html { redirect_to @socio_rg, notice: 'Socio rg was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_rg }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_rg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_rgs/1
  # PATCH/PUT /socio_rgs/1.json
  def update
    respond_to do |format|
      if @socio_rg.update(socio_rg_params)
        format.html { redirect_to @socio_rg, notice: 'Socio rg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_rg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_rgs/1
  # DELETE /socio_rgs/1.json
  def destroy
    @socio_rg.destroy
    respond_to do |format|
      format.html { redirect_to socio_rgs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_rg
      @socio_rg = SocioRg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_rg_params
      params.require(:socio_rg).permit(:interessado_id, :arquivo)
    end
end
