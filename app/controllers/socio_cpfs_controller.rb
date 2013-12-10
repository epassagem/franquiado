class SocioCpfsController < ApplicationController
  before_action :set_socio_cpf, only: [:show, :edit, :update, :destroy]

  # GET /socio_cpfs
  # GET /socio_cpfs.json
  def index
    @socio_cpfs = SocioCpf.all
  end

  # GET /socio_cpfs/1
  # GET /socio_cpfs/1.json
  def show
  end

  # GET /socio_cpfs/new
  def new
    @socio_cpf = SocioCpf.new
  end

  # GET /socio_cpfs/1/edit
  def edit
  end

  # POST /socio_cpfs
  # POST /socio_cpfs.json
  def create
    @socio_cpf = SocioCpf.new(socio_cpf_params)

    respond_to do |format|
      if @socio_cpf.save
        format.html { redirect_to @socio_cpf, notice: 'Socio cpf was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_cpf }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_cpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_cpfs/1
  # PATCH/PUT /socio_cpfs/1.json
  def update
    respond_to do |format|
      if @socio_cpf.update(socio_cpf_params)
        format.html { redirect_to @socio_cpf, notice: 'Socio cpf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_cpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_cpfs/1
  # DELETE /socio_cpfs/1.json
  def destroy
    @socio_cpf.destroy
    respond_to do |format|
      format.html { redirect_to socio_cpfs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_cpf
      @socio_cpf = SocioCpf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_cpf_params
      params.require(:socio_cpf).permit(:interessado_id, :arquivo)
    end
end
