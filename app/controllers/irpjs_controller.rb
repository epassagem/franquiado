class IrpjsController < ApplicationController
  before_action :set_irpj, only: [:show, :edit, :update, :destroy]

  # GET /irpjs
  # GET /irpjs.json
  def index
    @irpjs = Irpj.all
  end

  # GET /irpjs/1
  # GET /irpjs/1.json
  def show
  end

  # GET /irpjs/new
  def new
    @irpj = Irpj.new
  end

  # GET /irpjs/1/edit
  def edit
  end

  # POST /irpjs
  # POST /irpjs.json
  def create
    @irpj = Irpj.new(irpj_params)

    respond_to do |format|
      if @irpj.save
        format.html { redirect_to @irpj, notice: 'Irpj was successfully created.' }
        format.json { render action: 'show', status: :created, location: @irpj }
      else
        format.html { render action: 'new' }
        format.json { render json: @irpj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /irpjs/1
  # PATCH/PUT /irpjs/1.json
  def update
    respond_to do |format|
      if @irpj.update(irpj_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @irpj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irpjs/1
  # DELETE /irpjs/1.json
  def destroy
    @irpj.destroy
    respond_to do |format|
      format.html { redirect_to irpjs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irpj
      @irpj = Irpj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def irpj_params
      params.require(:irpj).permit(:interessado_id, :arquivo)
    end
end
