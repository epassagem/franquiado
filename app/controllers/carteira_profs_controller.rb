class CarteiraProfsController < ApplicationController
  before_action :set_carteira_prof, only: [:show, :edit, :update, :destroy]

  # GET /carteira_profs
  # GET /carteira_profs.json
  def index
    @carteira_profs = CarteiraProf.all
  end

  # GET /carteira_profs/1
  # GET /carteira_profs/1.json
  def show
  end

  # GET /carteira_profs/new
  def new
    @carteira_prof = CarteiraProf.new
  end

  # GET /carteira_profs/1/edit
  def edit
  end

  # POST /carteira_profs
  # POST /carteira_profs.json
  def create
    @carteira_prof = CarteiraProf.new(carteira_prof_params)

    respond_to do |format|
      if @carteira_prof.save
        format.html { redirect_to @carteira_prof, notice: 'Carteira prof was successfully created.' }
        format.json { render action: 'show', status: :created, location: @carteira_prof }
      else
        format.html { render action: 'new' }
        format.json { render json: @carteira_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carteira_profs/1
  # PATCH/PUT /carteira_profs/1.json
  def update
    respond_to do |format|
      if @carteira_prof.update(carteira_prof_params)
        format.html { redirect_to @carteira_prof, notice: 'Carteira prof was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @carteira_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carteira_profs/1
  # DELETE /carteira_profs/1.json
  def destroy
    @carteira_prof.destroy
    respond_to do |format|
      format.html { redirect_to carteira_profs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carteira_prof
      @carteira_prof = CarteiraProf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carteira_prof_params
      params.require(:carteira_prof).permit(:interessado_id, :arquivo)
    end
end
