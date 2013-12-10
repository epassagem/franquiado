class SocioDocFiscaisCoringsController < ApplicationController
  before_action :set_socio_doc_fiscais_coring, only: [:show, :edit, :update, :destroy]

  # GET /socio_doc_fiscais_corings
  # GET /socio_doc_fiscais_corings.json
  def index
    @socio_doc_fiscais_corings = SocioDocFiscaisCoring.all
  end

  # GET /socio_doc_fiscais_corings/1
  # GET /socio_doc_fiscais_corings/1.json
  def show
  end

  # GET /socio_doc_fiscais_corings/new
  def new
    @socio_doc_fiscais_coring = SocioDocFiscaisCoring.new
  end

  # GET /socio_doc_fiscais_corings/1/edit
  def edit
  end

  # POST /socio_doc_fiscais_corings
  # POST /socio_doc_fiscais_corings.json
  def create
    @socio_doc_fiscais_coring = SocioDocFiscaisCoring.new(socio_doc_fiscais_coring_params)

    respond_to do |format|
      if @socio_doc_fiscais_coring.save
        format.html { redirect_to @socio_doc_fiscais_coring, notice: 'Socio doc fiscais coring was successfully created.' }
        format.json { render action: 'show', status: :created, location: @socio_doc_fiscais_coring }
      else
        format.html { render action: 'new' }
        format.json { render json: @socio_doc_fiscais_coring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_doc_fiscais_corings/1
  # PATCH/PUT /socio_doc_fiscais_corings/1.json
  def update
    respond_to do |format|
      if @socio_doc_fiscais_coring.update(socio_doc_fiscais_coring_params)
        format.html { redirect_to @socio_doc_fiscais_coring, notice: 'Socio doc fiscais coring was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @socio_doc_fiscais_coring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_doc_fiscais_corings/1
  # DELETE /socio_doc_fiscais_corings/1.json
  def destroy
    @socio_doc_fiscais_coring.destroy
    respond_to do |format|
      format.html { redirect_to socio_doc_fiscais_corings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_doc_fiscais_coring
      @socio_doc_fiscais_coring = SocioDocFiscaisCoring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_doc_fiscais_coring_params
      params.require(:socio_doc_fiscais_coring).permit(:interessado_id, :arquivo, :nome)
    end
end
