class ConsultorsController < ApplicationController
  before_action :set_consultor, only: [:show, :edit, :update, :destroy]

  # GET /consultors
  # GET /consultors.json
  def index
    @consultors = Consultor.all
  end

  # GET /consultors/1
  # GET /consultors/1.json
  def show
  end

  # GET /consultors/new
  def new
    @consultor = Consultor.new
  end

  # GET /consultors/1/edit
  def edit
  end

  # POST /consultors
  # POST /consultors.json
  def create
    @consultor = Consultor.new(consultor_params)

    respond_to do |format|
      if @consultor.save
        format.html { redirect_to @consultor, notice: 'Consultor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @consultor }
      else
        format.html { render action: 'new' }
        format.json { render json: @consultor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultors/1
  # PATCH/PUT /consultors/1.json
  def update
    respond_to do |format|
      if @consultor.update(consultor_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @consultor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultors/1
  # DELETE /consultors/1.json
  def destroy
    @consultor.destroy
    respond_to do |format|
      format.html { redirect_to consultors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultor
      @consultor = Consultor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consultor_params
      params.require(:consultor).permit(:interessado_id, :arquivo, :data_fim, :verificador)
    end
end
