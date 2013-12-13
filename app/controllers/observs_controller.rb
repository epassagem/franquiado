class ObservsController < ApplicationController
  before_action :set_observ, only: [:show, :edit, :update, :destroy]

  # GET /observs
  # GET /observs.json
  def index
    @observs = Observ.all
  end

  # GET /observs/1
  # GET /observs/1.json
  def show
  end

  # GET /observs/new
  def new
    @observ = Observ.new
  end

  # GET /observs/1/edit
  def edit
  end

  # POST /observs
  # POST /observs.json
  def create
    @observ = Observ.new(observ_params)

    respond_to do |format|
      if @observ.save
        format.html { redirect_to @observ, notice: 'Observ was successfully created.' }
        format.json { render action: 'show', status: :created, location: @observ }
      else
        format.html { render action: 'new' }
        format.json { render json: @observ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observs/1
  # PATCH/PUT /observs/1.json
  def update
    respond_to do |format|
      if @observ.update(observ_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @observ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observs/1
  # DELETE /observs/1.json
  def destroy
    @observ.destroy
    respond_to do |format|
      format.html { redirect_to observs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observ
      @observ = Observ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observ_params
      params.require(:observ).permit(:interessado_id, :observacao)
    end
end
