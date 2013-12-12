class ValPontosController < ApplicationController
  before_action :set_val_ponto, only: [:show, :edit, :update, :destroy]

  # GET /val_pontos
  # GET /val_pontos.json
  def index
    @val_pontos = ValPonto.all
  end

  # GET /val_pontos/1
  # GET /val_pontos/1.json
  def show
  end

  # GET /val_pontos/new
  def new
    @val_ponto = ValPonto.new
  end

  # GET /val_pontos/1/edit
  def edit
  end

  # POST /val_pontos
  # POST /val_pontos.json
  def create
    @val_ponto = ValPonto.new(val_ponto_params)

    respond_to do |format|
      if @val_ponto.save
        format.html { redirect_to @val_ponto, notice: 'Val ponto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @val_ponto }
      else
        format.html { render action: 'new' }
        format.json { render json: @val_ponto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /val_pontos/1
  # PATCH/PUT /val_pontos/1.json
  def update
    respond_to do |format|
      if @val_ponto.update(val_ponto_params)
        format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @val_ponto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /val_pontos/1
  # DELETE /val_pontos/1.json
  def destroy
    @val_ponto.destroy
    respond_to do |format|
      format.html { redirect_to val_pontos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_val_ponto
      @val_ponto = ValPonto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def val_ponto_params
      params.require(:val_ponto).permit(:interessado_id, :arquivo)
    end
end
