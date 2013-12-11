class SpcsController < ApplicationController
  before_action :set_spc, only: [:show, :edit, :update, :destroy]

  # GET /spcs
  # GET /spcs.json
  def index
    @spcs = Spc.all
  end

  # GET /spcs/1
  # GET /spcs/1.json
  def show
  end

  # GET /spcs/new
  def new
    @spc = Spc.new
  end

  # GET /spcs/1/edit
  def edit
  end

  # POST /spcs
  # POST /spcs.json
  def create
    @spc = Spc.new(spc_params)

    respond_to do |format|
      if @spc.save
        format.html { redirect_to @spc, notice: 'Spc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @spc }
      else
        format.html { render action: 'new' }
        format.json { render json: @spc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spcs/1
  # PATCH/PUT /spcs/1.json
  def update
    respond_to do |format|
      if @spc.update(spc_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @spc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spcs/1
  # DELETE /spcs/1.json
  def destroy
    @spc.destroy
    respond_to do |format|
      format.html { redirect_to spcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spc
      @spc = Spc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spc_params
      params.require(:spc).permit(:interessado_id, :arquivo)
    end
end
