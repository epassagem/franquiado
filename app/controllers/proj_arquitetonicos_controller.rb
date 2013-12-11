class ProjArquitetonicosController < ApplicationController
  before_action :set_proj_arquitetonico, only: [:show, :edit, :update, :destroy]

  # GET /proj_arquitetonicos
  # GET /proj_arquitetonicos.json
  def index
    @proj_arquitetonicos = ProjArquitetonico.all
  end

  # GET /proj_arquitetonicos/1
  # GET /proj_arquitetonicos/1.json
  def show
  end

  # GET /proj_arquitetonicos/new
  def new
    @proj_arquitetonico = ProjArquitetonico.new
  end

  # GET /proj_arquitetonicos/1/edit
  def edit
  end

  # POST /proj_arquitetonicos
  # POST /proj_arquitetonicos.json
  def create
    @proj_arquitetonico = ProjArquitetonico.new(proj_arquitetonico_params)

    respond_to do |format|
      if @proj_arquitetonico.save
        format.html { redirect_to @proj_arquitetonico, notice: 'Proj arquitetonico was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proj_arquitetonico }
      else
        format.html { render action: 'new' }
        format.json { render json: @proj_arquitetonico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proj_arquitetonicos/1
  # PATCH/PUT /proj_arquitetonicos/1.json
  def update
    respond_to do |format|
      if @proj_arquitetonico.update(proj_arquitetonico_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proj_arquitetonico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proj_arquitetonicos/1
  # DELETE /proj_arquitetonicos/1.json
  def destroy
    @proj_arquitetonico.destroy
    respond_to do |format|
      format.html { redirect_to proj_arquitetonicos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proj_arquitetonico
      @proj_arquitetonico = ProjArquitetonico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proj_arquitetonico_params
      params.require(:proj_arquitetonico).permit(:interessado_id, :arquivo)
    end
end
