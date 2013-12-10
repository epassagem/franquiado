class DocFiscaisCoringsController < ApplicationController
  before_action :set_doc_fiscais_coring, only: [:show, :edit, :update, :destroy]

  # GET /doc_fiscais_corings
  # GET /doc_fiscais_corings.json
  def index
    @doc_fiscais_corings = DocFiscaisCoring.all
  end

  # GET /doc_fiscais_corings/1
  # GET /doc_fiscais_corings/1.json
  def show
  end

  # GET /doc_fiscais_corings/new
  def new
    @doc_fiscais_coring = DocFiscaisCoring.new
  end

  # GET /doc_fiscais_corings/1/edit
  def edit
  end

  # POST /doc_fiscais_corings
  # POST /doc_fiscais_corings.json
  def create
    @doc_fiscais_coring = DocFiscaisCoring.new(doc_fiscais_coring_params)

    respond_to do |format|
      if @doc_fiscais_coring.save
        format.html { redirect_to @doc_fiscais_coring, notice: 'Doc fiscais coring was successfully created.' }
        format.json { render action: 'show', status: :created, location: @doc_fiscais_coring }
      else
        format.html { render action: 'new' }
        format.json { render json: @doc_fiscais_coring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_fiscais_corings/1
  # PATCH/PUT /doc_fiscais_corings/1.json
  def update
    respond_to do |format|
      if @doc_fiscais_coring.update(doc_fiscais_coring_params)
        format.html { redirect_to @doc_fiscais_coring, notice: 'Doc fiscais coring was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @doc_fiscais_coring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_fiscais_corings/1
  # DELETE /doc_fiscais_corings/1.json
  def destroy
    @doc_fiscais_coring.destroy
    respond_to do |format|
      format.html { redirect_to doc_fiscais_corings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_fiscais_coring
      @doc_fiscais_coring = DocFiscaisCoring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_fiscais_coring_params
      params.require(:doc_fiscais_coring).permit(:interessado_id, :arquivo, :nome)
    end
end
