class InauguracaosController < ApplicationController
  before_action :set_inauguracao, only: [:show, :edit, :update, :destroy]

  # GET /inauguracaos
  # GET /inauguracaos.json
  def index
    @inauguracaos = Inauguracao.all
  end

  # GET /inauguracaos/1
  # GET /inauguracaos/1.json
  def show
  end

  # GET /inauguracaos/new
  def new
    @inauguracao = Inauguracao.new
  end

  # GET /inauguracaos/1/edit
  def edit
  end

  # POST /inauguracaos
  # POST /inauguracaos.json
  def create
    @inauguracao = Inauguracao.new(inauguracao_params)
    @fotos_in = @inauguracao.fotos_in.build

    respond_to do |format|
      if @inauguracao.save
        format.html { redirect_to @inauguracao, notice: 'Inauguracao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inauguracao }
      else
        format.html { render action: 'new' }
        format.json { render json: @inauguracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inauguracaos/1
  # PATCH/PUT /inauguracaos/1.json
  def update
    respond_to do |format|
      if @inauguracao.update(inauguracao_params)
        format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inauguracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inauguracaos/1
  # DELETE /inauguracaos/1.json
  def destroy
    @inauguracao.destroy
    respond_to do |format|
      format.html { redirect_to inauguracaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inauguracao
      @inauguracao = Inauguracao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inauguracao_params
      params.require(:inauguracao).permit(:interessado_id, :arquivo_doc, :data_start, :data_end, :fotos_in)
    end
end
