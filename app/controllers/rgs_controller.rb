class RgsController < ApplicationController
  before_action :set_rg, only: [:show, :edit, :update, :destroy]

  # GET /rgs
  # GET /rgs.json
  def index
    @rgs = Rg.all
  end

  # GET /rgs/1
  # GET /rgs/1.json
  def show
  end

  # GET /rgs/new
  def new
    @rg = Rg.new
  end

  # GET /rgs/1/edit
  def edit
  end

  # POST /rgs
  # POST /rgs.json
  def create
    @rg = Rg.new(rg_params)

    respond_to do |format|
      if @rg.save
        format.html { redirect_to @rg, notice: 'Rg was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rg }
      else
        format.html { render action: 'new' }
        format.json { render json: @rg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rgs/1
  # PATCH/PUT /rgs/1.json
  def update
    respond_to do |format|
      if @rg.update(rg_params)
        format.html { redirect_to @rg, notice: 'Rg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rgs/1
  # DELETE /rgs/1.json
  def destroy
    @rg.destroy
    respond_to do |format|
      format.html { redirect_to rgs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rg
      @rg = Rg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rg_params
      params.require(:rg).permit(:interessado_id, :arquivo)
    end
end
