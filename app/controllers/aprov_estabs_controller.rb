class AprovEstabsController < ApplicationController
  before_action :set_aprov_estab, only: [:show, :edit, :update, :destroy]

  # GET /aprov_estabs
  # GET /aprov_estabs.json
  def index
    @aprov_estabs = AprovEstab.all
  end

  # GET /aprov_estabs/1
  # GET /aprov_estabs/1.json
  def show
  end

  # GET /aprov_estabs/new
  def new
    @aprov_estab = AprovEstab.new
  end

  # GET /aprov_estabs/1/edit
  def edit
  end

  # POST /aprov_estabs
  # POST /aprov_estabs.json
  def create
    @aprov_estab = AprovEstab.new(aprov_estab_params)

    respond_to do |format|
      if @aprov_estab.save
        format.html { redirect_to @aprov_estab, notice: 'Aprov estab was successfully created.' }
        format.json { render action: 'show', status: :created, location: @aprov_estab }
      else
        format.html { render action: 'new' }
        format.json { render json: @aprov_estab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aprov_estabs/1
  # PATCH/PUT /aprov_estabs/1.json
  def update
    respond_to do |format|
      if @aprov_estab.update(aprov_estab_params)
        format.html { redirect_to @aprov_estab, notice: 'Aprov estab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aprov_estab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aprov_estabs/1
  # DELETE /aprov_estabs/1.json
  def destroy
    @aprov_estab.destroy
    respond_to do |format|
      format.html { redirect_to aprov_estabs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aprov_estab
      @aprov_estab = AprovEstab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aprov_estab_params
      params.require(:aprov_estab).permit(:interessado_id, :arquivo_doc)
    end
end
