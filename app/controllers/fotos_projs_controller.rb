class FotosProjsController < ApplicationController
  before_action :set_fotos_proj, only: [:show, :edit, :update, :destroy]

  # GET /fotos_projs
  # GET /fotos_projs.json
  def index
    @fotos_projs = FotosProj.all
  end

  # GET /fotos_projs/1
  # GET /fotos_projs/1.json
  def show
  end

  # GET /fotos_projs/new
  def new
    @fotos_proj = FotosProj.new
  end

  # GET /fotos_projs/1/edit
  def edit
  end

  # POST /fotos_projs
  # POST /fotos_projs.json
  def create
    @fotos_proj = FotosProj.new(fotos_proj_params)

    respond_to do |format|
      if @fotos_proj.save
        format.html { redirect_to @fotos_proj, notice: 'Fotos proj was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fotos_proj }
      else
        format.html { render action: 'new' }
        format.json { render json: @fotos_proj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotos_projs/1
  # PATCH/PUT /fotos_projs/1.json
  def update
    respond_to do |format|
      if @fotos_proj.update(fotos_proj_params)
        format.html { redirect_to @fotos_proj, notice: 'Fotos proj was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fotos_proj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotos_projs/1
  # DELETE /fotos_projs/1.json
  def destroy
    @fotos_proj.destroy
    respond_to do |format|
      format.html { redirect_to fotos_projs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotos_proj
      @fotos_proj = FotosProj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotos_proj_params
      params.require(:fotos_proj).permit(:aprov_proj_id, :foto)
    end
end
