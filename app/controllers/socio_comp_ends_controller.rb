class SocioCompEndsController < ApplicationController
  before_action :set_socio_comp_end, only: [:show, :edit, :update, :destroy]

  # GET /socio_comp_ends
  # GET /socio_comp_ends.json
  def index
    @socio_comp_ends = SocioCompEnd.all
  end

  # GET /socio_comp_ends/1
  # GET /socio_comp_ends/1.json
  def show
  end

  # GET /socio_comp_ends/new
  def new
    @socio_comp_end = SocioCompEnd.new
  end

  # GET /socio_comp_ends/1/edit
  def edit
  end

  # POST /socio_comp_ends
  # POST /socio_comp_ends.json
  def create
    @socio_comp_end = SocioCompEnd.new(socio_comp_end_params)

    respond_to do |format|
      if @socio_comp_end.save
        format.html { redirect_to @socio_comp_end, notice: 'Socio comp end was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_comp_end }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_comp_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_comp_ends/1
  # PATCH/PUT /socio_comp_ends/1.json
  def update
    respond_to do |format|
      if @socio_comp_end.update(socio_comp_end_params)
        format.html { redirect_to @socio_comp_end, notice: 'Socio comp end was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_comp_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_comp_ends/1
  # DELETE /socio_comp_ends/1.json
  def destroy
    @socio_comp_end.destroy
    respond_to do |format|
      format.html { redirect_to socio_comp_ends_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_comp_end
      @socio_comp_end = SocioCompEnd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_comp_end_params
      params.require(:socio_comp_end).permit(:interessado_id, :arquivo)
    end
end
