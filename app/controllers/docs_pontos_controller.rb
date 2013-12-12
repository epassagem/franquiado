class DocsPontosController < ApplicationController
  before_action :set_docs_ponto, only: [:show, :edit, :update, :destroy]

  # GET /docs_pontos
  # GET /docs_pontos.json
  def index
    @docs_pontos = DocsPonto.all
  end

  # GET /docs_pontos/1
  # GET /docs_pontos/1.json
  def show
  end

  # GET /docs_pontos/new
  def new
    @docs_ponto = DocsPonto.new
  end

  # GET /docs_pontos/1/edit
  def edit
  end

  # POST /docs_pontos
  # POST /docs_pontos.json
  def create
    @docs_ponto = DocsPonto.new(docs_ponto_params)

    respond_to do |format|
      if @docs_ponto.save
        format.html { redirect_to @docs_ponto, notice: 'Docs ponto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @docs_ponto }
      else
        format.html { render action: 'new' }
        format.json { render json: @docs_ponto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /docs_pontos/1
  # PATCH/PUT /docs_pontos/1.json
  def update
    respond_to do |format|
      if @docs_ponto.update(docs_ponto_params)
        format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @docs_ponto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /docs_pontos/1
  # DELETE /docs_pontos/1.json
  def destroy
    @docs_ponto.destroy
    respond_to do |format|
      format.html { redirect_to docs_pontos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_docs_ponto
      @docs_ponto = DocsPonto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def docs_ponto_params
      params.require(:docs_ponto).permit(:interessado_id, :arquivo, :nome)
    end
end
