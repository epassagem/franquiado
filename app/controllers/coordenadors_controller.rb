class CoordenadorsController < ApplicationController
  before_action :set_coordenador, only: [:show, :edit, :update, :destroy]

  # GET /coordenadors
  # GET /coordenadors.json
  def index
    @coordenadors = Coordenador.all
  end

  # GET /coordenadors/1
  # GET /coordenadors/1.json
  def show
  end

  # GET /coordenadors/new
  def new
    @coordenador = Coordenador.new
  end

  # GET /coordenadors/1/edit
  def edit
  end

  # POST /coordenadors
  # POST /coordenadors.json
  def create
    @coordenador = Coordenador.new(coordenador_params)

    respond_to do |format|
      if @coordenador.save
        format.html { redirect_to @coordenador, notice: 'Coordenador was successfully created.' }
        format.json { render action: 'show', status: :created, location: @coordenador }
      else
        format.html { render action: 'new' }
        format.json { render json: @coordenador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordenadors/1
  # PATCH/PUT /coordenadors/1.json
  def update
    respond_to do |format|
      if @coordenador.update(coordenador_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @coordenador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordenadors/1
  # DELETE /coordenadors/1.json
  def destroy
    @coordenador.destroy
    respond_to do |format|
      format.html { redirect_to coordenadors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordenador
      @coordenador = Coordenador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coordenador_params
      params.require(:coordenador).permit(:interessado_id, :arquivo, :data_fim, :verificador)
    end
end
