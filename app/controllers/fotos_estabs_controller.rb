class FotosEstabsController < ApplicationController
  before_action :set_fotos_estab, only: [:show, :edit, :update, :destroy]

  # GET /fotos_estabs
  # GET /fotos_estabs.json
  def index
    @fotos_estabs = FotosEstab.all
  end

  # GET /fotos_estabs/1
  # GET /fotos_estabs/1.json
  def show
  end

  # GET /fotos_estabs/new
  def new
    @fotos_estab = FotosEstab.new
  end

  # GET /fotos_estabs/1/edit
  def edit
  end

  # POST /fotos_estabs
  # POST /fotos_estabs.json
  def create
    @fotos_estab = FotosEstab.new(fotos_estab_params)

    respond_to do |format|
      if @fotos_estab.save
        format.html { redirect_to @fotos_estab, notice: 'Fotos estab was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fotos_estab }
      else
        format.html { render action: 'new' }
        format.json { render json: @fotos_estab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotos_estabs/1
  # PATCH/PUT /fotos_estabs/1.json
  def update
    respond_to do |format|
      if @fotos_estab.update(fotos_estab_params)
        format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fotos_estab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotos_estabs/1
  # DELETE /fotos_estabs/1.json
  def destroy
    @fotos_estab.destroy
    respond_to do |format|
      format.html { redirect_to fotos_estabs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotos_estab
      @fotos_estab = FotosEstab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotos_estab_params
      params.require(:fotos_estab).permit(:aprov_estab_id, :foto)
    end
end
