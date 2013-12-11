class SerasasController < ApplicationController
  before_action :set_serasa, only: [:show, :edit, :update, :destroy]

  # GET /serasas
  # GET /serasas.json
  def index
    @serasas = Serasa.all
  end

  # GET /serasas/1
  # GET /serasas/1.json
  def show
  end

  # GET /serasas/new
  def new
    @serasa = Serasa.new
  end

  # GET /serasas/1/edit
  def edit
  end

  # POST /serasas
  # POST /serasas.json
  def create
    @serasa = Serasa.new(serasa_params)

    respond_to do |format|
      if @serasa.save
        format.html { redirect_to @serasa, notice: 'Serasa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @serasa }
      else
        format.html { render action: 'new' }
        format.json { render json: @serasa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serasas/1
  # PATCH/PUT /serasas/1.json
  def update
    respond_to do |format|
      if @serasa.update(serasa_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @serasa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serasas/1
  # DELETE /serasas/1.json
  def destroy
    @serasa.destroy
    respond_to do |format|
      format.html { redirect_to serasas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serasa
      @serasa = Serasa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serasa_params
      params.require(:serasa).permit(:interessado_id, :arquivo)
    end
end
