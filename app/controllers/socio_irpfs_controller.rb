class SocioIrpfsController < ApplicationController
  before_action :set_socio_irpf, only: [:show, :edit, :update, :destroy]

  # GET /socio_irpfs
  # GET /socio_irpfs.json
  def index
    @socio_irpfs = SocioIrpf.all
  end

  # GET /socio_irpfs/1
  # GET /socio_irpfs/1.json
  def show
  end

  # GET /socio_irpfs/new
  def new
    @socio_irpf = SocioIrpf.new
  end

  # GET /socio_irpfs/1/edit
  def edit
  end

  # POST /socio_irpfs
  # POST /socio_irpfs.json
  def create
    @socio_irpf = SocioIrpf.new(socio_irpf_params)

    respond_to do |format|
      if @socio_irpf.save
        format.html { redirect_to @socio_irpf, notice: 'Socio irpf was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_irpf }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_irpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_irpfs/1
  # PATCH/PUT /socio_irpfs/1.json
  def update
    respond_to do |format|
      if @socio_irpf.update(socio_irpf_params)
        format.html { redirect_to @socio_irpf, notice: 'Socio irpf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_irpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_irpfs/1
  # DELETE /socio_irpfs/1.json
  def destroy
    @socio_irpf.destroy
    respond_to do |format|
      format.html { redirect_to socio_irpfs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_irpf
      @socio_irpf = SocioIrpf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_irpf_params
      params.require(:socio_irpf).permit(:interessado_id, :arquivo)
    end
end
