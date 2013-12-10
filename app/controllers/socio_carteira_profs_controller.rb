class SocioCarteiraProfsController < ApplicationController
  before_action :set_socio_carteira_prof, only: [:show, :edit, :update, :destroy]

  # GET /socio_carteira_profs
  # GET /socio_carteira_profs.json
  def index
    @socio_carteira_profs = SocioCarteiraProf.all
  end

  # GET /socio_carteira_profs/1
  # GET /socio_carteira_profs/1.json
  def show
  end

  # GET /socio_carteira_profs/new
  def new
    @socio_carteira_prof = SocioCarteiraProf.new
  end

  # GET /socio_carteira_profs/1/edit
  def edit
  end

  # POST /socio_carteira_profs
  # POST /socio_carteira_profs.json
  def create
    @socio_carteira_prof = SocioCarteiraProf.new(socio_carteira_prof_params)

    respond_to do |format|
      if @socio_carteira_prof.save
        format.html { redirect_to @socio_carteira_prof, notice: 'Socio carteira prof was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_carteira_prof }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_carteira_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_carteira_profs/1
  # PATCH/PUT /socio_carteira_profs/1.json
  def update
    respond_to do |format|
      if @socio_carteira_prof.update(socio_carteira_prof_params)
        format.html { redirect_to @socio_carteira_prof, notice: 'Socio carteira prof was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_carteira_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_carteira_profs/1
  # DELETE /socio_carteira_profs/1.json
  def destroy
    @socio_carteira_prof.destroy
    respond_to do |format|
      format.html { redirect_to socio_carteira_profs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_carteira_prof
      @socio_carteira_prof = SocioCarteiraProf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_carteira_prof_params
      params.require(:socio_carteira_prof).permit(:interessado_id, :arquivo)
    end
end
