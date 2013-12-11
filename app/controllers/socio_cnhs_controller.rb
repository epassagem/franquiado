class SocioCnhsController < ApplicationController
  before_action :set_socio_cnh, only: [:show, :edit, :update, :destroy]

  # GET /socio_cnhs
  # GET /socio_cnhs.json
  def index
    @socio_cnhs = SocioCnh.all
  end

  # GET /socio_cnhs/1
  # GET /socio_cnhs/1.json
  def show
  end

  # GET /socio_cnhs/new
  def new
    @socio_cnh = SocioCnh.new
  end

  # GET /socio_cnhs/1/edit
  def edit
  end

  # POST /socio_cnhs
  # POST /socio_cnhs.json
  def create
    @socio_cnh = SocioCnh.new(socio_cnh_params)

    respond_to do |format|
      if @socio_cnh.save
        format.html { redirect_to @socio_cnh, notice: 'Socio cnh was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_cnh }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_cnh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_cnhs/1
  # PATCH/PUT /socio_cnhs/1.json
  def update
    respond_to do |format|
      if @socio_cnh.update(socio_cnh_params)
        format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_cnh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_cnhs/1
  # DELETE /socio_cnhs/1.json
  def destroy
    @socio_cnh.destroy
    respond_to do |format|
      format.html { redirect_to socio_cnhs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_cnh
      @socio_cnh = SocioCnh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_cnh_params
      params.require(:socio_cnh).permit(:interessado_id, :arquivo)
    end
end
