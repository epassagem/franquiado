class AprovProjsController < ApplicationController
  before_action :set_aprov_proj, only: [:show, :edit, :update, :destroy]

  # GET /aprov_projs
  # GET /aprov_projs.json
  def index
    @aprov_projs = AprovProj.all
  end

  # GET /aprov_projs/1
  # GET /aprov_projs/1.json
  def show
  end

  # GET /aprov_projs/new
  def new
    @aprov_proj = AprovProj.new
  end

  # GET /aprov_projs/1/edit
  def edit
  end

  # POST /aprov_projs
  # POST /aprov_projs.json
  def create
    @aprov_proj = AprovProj.new(aprov_proj_params)

    respond_to do |format|
      if @aprov_proj.save
        format.html { redirect_to @aprov_proj, notice: 'Aprov proj was successfully created.' }
        format.json { render action: 'show', status: :created, location: @aprov_proj }
      else
        format.html { render action: 'new' }
        format.json { render json: @aprov_proj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aprov_projs/1
  # PATCH/PUT /aprov_projs/1.json
  def update
    respond_to do |format|
      if @aprov_proj.update(aprov_proj_params)
        format.html { redirect_to @aprov_proj, notice: 'Aprov proj was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aprov_proj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aprov_projs/1
  # DELETE /aprov_projs/1.json
  def destroy
    @aprov_proj.destroy
    respond_to do |format|
      format.html { redirect_to aprov_projs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aprov_proj
      @aprov_proj = AprovProj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aprov_proj_params
      params.require(:aprov_proj).permit(:interessado_id, :arquivo_doc)
    end
end
