class InteressadosController < ApplicationController
  before_action :set_interessado, only: [:show, :edit, :update, :destroy]

  # GET /interessados
  # GET /interessados.json
  def index
    @interessados = Interessado.all
    @interessados = Interessado.paginate(:page => params[:page], :per_page => 20)
  end

  # GET /interessados/1
  # GET /interessados/1.json
  def show
    
    

      
    if @interessado.cart.count == 0
      @cart = @interessado.cart.build
      @cart.save
     
    
    end
    
      
    if @interessado.cart.last.arquivo.present?
      @cart = @interessado.cart.build
      @cart.save
     
    end
      
  end
      




  # GET /interessados/new
  def new
    @interessado = Interessado.new
  end

  # GET /interessados/1/edit
  def edit
  end

  # POST /interessados
  # POST /interessados.json
  def create
    @interessado = Interessado.new(interessado_params)
    @cart = @interessado.cart.build

    respond_to do |format|
      if @interessado.save
        format.html { redirect_to @interessado, notice: 'Interessado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @interessado }
      else
        format.html { render action: 'new' }
        format.json { render json: @interessado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interessados/1
  # PATCH/PUT /interessados/1.json
  def update
    respond_to do |format|
      if @interessado.update(interessado_params)
        format.html { redirect_to @interessado, notice: 'Interessado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @interessado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interessados/1
  # DELETE /interessados/1.json
  def destroy
    @interessado.destroy
    respond_to do |format|
      format.html { redirect_to interessados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interessado
      @interessado = Interessado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interessado_params
      params.require(:interessado).permit(:interessado_nome, :interessado_cpf, :interessado_rg, :interessado_data_nasc, :interessado_estado_civil, :interessado_regime_bens, :interessado_renda, :interessado_sera_admin, :interessado_dispon_integral, :interessado_quem_sera_admin, :interessado_resumo_prof, :interessado_manifesto_pos, :interessado_email, :interessado_banco, :interessado_agencia, :interessado_cc, :interessado_gerente, :interessado_fone_banco, :cart, :carteira_prof, :cnh, :comp_end, :cpf, :dados_banco, :doc_fiscais_coring, :irpf, :irpj,  :rg, :serasa, :spc, :lembrete, :observ, :plan_resumo, :proj_arquitetonico, :redacao, :cronograma, :socio_carteira_prof, :socio_cnh, :socio_comp_end, :socio_cpf, :socio_dados_banco, :socio_doc_fiscais_coring, :socio_irpf, :socio_irpj,  :socio_rg, :socio_serasa, :socio_spc)
    end
end
