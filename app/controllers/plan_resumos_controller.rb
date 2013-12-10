class PlanResumosController < ApplicationController
  before_action :set_plan_resumo, only: [:show, :edit, :update, :destroy]

  # GET /plan_resumos
  # GET /plan_resumos.json
  def index
    @plan_resumos = PlanResumo.all
  end

  # GET /plan_resumos/1
  # GET /plan_resumos/1.json
  def show
  end

  # GET /plan_resumos/new
  def new
    @plan_resumo = PlanResumo.new
  end

  # GET /plan_resumos/1/edit
  def edit
  end

  # POST /plan_resumos
  # POST /plan_resumos.json
  def create
    @plan_resumo = PlanResumo.new(plan_resumo_params)

    respond_to do |format|
      if @plan_resumo.save
        format.html { redirect_to @plan_resumo, notice: 'Plan resumo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @plan_resumo }
      else
        format.html { render action: 'new' }
        format.json { render json: @plan_resumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_resumos/1
  # PATCH/PUT /plan_resumos/1.json
  def update
    respond_to do |format|
      if @plan_resumo.update(plan_resumo_params)
        format.html { redirect_to @plan_resumo, notice: 'Plan resumo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @plan_resumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_resumos/1
  # DELETE /plan_resumos/1.json
  def destroy
    @plan_resumo.destroy
    respond_to do |format|
      format.html { redirect_to plan_resumos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_resumo
      @plan_resumo = PlanResumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_resumo_params
      params.require(:plan_resumo).permit(:interessado_id, :arquivo)
    end
end
