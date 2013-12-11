class CofsController < ApplicationController
  before_action :set_cof, only: [:show, :edit, :update, :destroy]

  # GET /cofs
  # GET /cofs.json
  def index
    @cofs = Cof.all
  end

  # GET /cofs/1
  # GET /cofs/1.json
  def show
  end

  # GET /cofs/new
  def new
    @cof = Cof.new
  end

  # GET /cofs/1/edit
  def edit
  end

  # POST /cofs
  # POST /cofs.json
  def create
    @cof = Cof.new(cof_params)

    respond_to do |format|
      if @cof.save
        format.html { redirect_to @cof, notice: 'Cof was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cof }
      else
        format.html { render action: 'new' }
        format.json { render json: @cof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cofs/1
  # PATCH/PUT /cofs/1.json
  def update
    respond_to do |format|
      if @cof.update(cof_params)
        format.html { redirect_to @cof, notice: 'Cof was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cofs/1
  # DELETE /cofs/1.json
  def destroy
    @cof.destroy
    respond_to do |format|
      format.html { redirect_to cofs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cof
      @cof = Cof.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cof_params
      params.require(:cof).permit(:interessado_id, :data_fim, :estatus, :arquivo)
    end
end
