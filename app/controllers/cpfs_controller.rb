class CpfsController < ApplicationController
  before_action :set_cpf, only: [:show, :edit, :update, :destroy]

  # GET /cpfs
  # GET /cpfs.json
  def index
    @cpfs = Cpf.all
  end

  # GET /cpfs/1
  # GET /cpfs/1.json
  def show
  end

  # GET /cpfs/new
  def new
    @cpf = Cpf.new
  end

  # GET /cpfs/1/edit
  def edit
  end

  # POST /cpfs
  # POST /cpfs.json
  def create
    @cpf = Cpf.new(cpf_params)

    respond_to do |format|
      if @cpf.save
        format.html { redirect_to @cpf, notice: 'Cpf was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpf }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpfs/1
  # PATCH/PUT /cpfs/1.json
  def update
    respond_to do |format|
      if @cpf.update(cpf_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpfs/1
  # DELETE /cpfs/1.json
  def destroy
    @cpf.destroy
    respond_to do |format|
      format.html { redirect_to cpfs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpf
      @cpf = Cpf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpf_params
      params.require(:cpf).permit(:interessado_id, :arquivo)
    end
end
