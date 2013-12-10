class IrpfsController < ApplicationController
  before_action :set_irpf, only: [:show, :edit, :update, :destroy]

  # GET /irpfs
  # GET /irpfs.json
  def index
    @irpfs = Irpf.all
  end

  # GET /irpfs/1
  # GET /irpfs/1.json
  def show
  end

  # GET /irpfs/new
  def new
    @irpf = Irpf.new
  end

  # GET /irpfs/1/edit
  def edit
  end

  # POST /irpfs
  # POST /irpfs.json
  def create
    @irpf = Irpf.new(irpf_params)

    respond_to do |format|
      if @irpf.save
        format.html { redirect_to @irpf, notice: 'Irpf was successfully created.' }
        format.json { render action: 'show', status: :created, location: @irpf }
      else
        format.html { render action: 'new' }
        format.json { render json: @irpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /irpfs/1
  # PATCH/PUT /irpfs/1.json
  def update
    respond_to do |format|
      if @irpf.update(irpf_params)
        format.html { redirect_to @irpf, notice: 'Irpf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @irpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irpfs/1
  # DELETE /irpfs/1.json
  def destroy
    @irpf.destroy
    respond_to do |format|
      format.html { redirect_to irpfs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irpf
      @irpf = Irpf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def irpf_params
      params.require(:irpf).permit(:interessado_id, :arquivo)
    end
end
