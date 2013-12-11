class CnhsController < ApplicationController
  before_action :set_cnh, only: [:show, :edit, :update, :destroy]

  # GET /cnhs
  # GET /cnhs.json
  def index
    @cnhs = Cnh.all
  end

  # GET /cnhs/1
  # GET /cnhs/1.json
  def show
  end

  # GET /cnhs/new
  def new
    @cnh = Cnh.new
  end

  # GET /cnhs/1/edit
  def edit
  end

  # POST /cnhs
  # POST /cnhs.json
  def create
    @cnh = Cnh.new(cnh_params)

    respond_to do |format|
      if @cnh.save
        format.html { redirect_to @cnh, notice: 'Cnh was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cnh }
      else
        format.html { render action: 'new' }
        format.json { render json: @cnh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cnhs/1
  # PATCH/PUT /cnhs/1.json
  def update
    respond_to do |format|
      if @cnh.update(cnh_params)
        format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cnh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cnhs/1
  # DELETE /cnhs/1.json
  def destroy
    @cnh.destroy
    respond_to do |format|
      format.html { redirect_to cnhs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cnh
      @cnh = Cnh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cnh_params
      params.require(:cnh).permit(:interessado_id, :arquivo)
    end
end
