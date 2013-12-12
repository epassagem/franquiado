class OperadorsController < ApplicationController
  before_action :set_operador, only: [:show, :edit, :update, :destroy]

  # GET /operadors
  # GET /operadors.json
  def index
    @operadors = Operador.all
  end

  # GET /operadors/1
  # GET /operadors/1.json
  def show
  end

  # GET /operadors/new
  def new
    @operador = Operador.new
  end

  # GET /operadors/1/edit
  def edit
  end

  # POST /operadors
  # POST /operadors.json
  def create
    @operador = Operador.new(operador_params)

    respond_to do |format|
      if @operador.save
        format.html { redirect_to @operador, notice: 'Operador was successfully created.' }
        format.json { render action: 'show', status: :created, location: @operador }
      else
        format.html { render action: 'new' }
        format.json { render json: @operador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operadors/1
  # PATCH/PUT /operadors/1.json
  def update
    respond_to do |format|
      if @operador.update(operador_params)
        format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @operador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operadors/1
  # DELETE /operadors/1.json
  def destroy
    @operador.destroy
    respond_to do |format|
      format.html { redirect_to operadors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operador
      @operador = Operador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operador_params
      params.require(:operador).permit(:interessado_id, :arquivo, :data_fim, :verificador)
    end
end
