class CompEndsController < ApplicationController
  before_action :set_comp_end, only: [:show, :edit, :update, :destroy]

  # GET /comp_ends
  # GET /comp_ends.json
  def index
    @comp_ends = CompEnd.all
  end

  # GET /comp_ends/1
  # GET /comp_ends/1.json
  def show
  end

  # GET /comp_ends/new
  def new
    @comp_end = CompEnd.new
  end

  # GET /comp_ends/1/edit
  def edit
  end

  # POST /comp_ends
  # POST /comp_ends.json
  def create
    @comp_end = CompEnd.new(comp_end_params)

    respond_to do |format|
      if @comp_end.save
        format.html { redirect_to @comp_end, notice: 'Comp end was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comp_end }
      else
        format.html { render action: 'new' }
        format.json { render json: @comp_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comp_ends/1
  # PATCH/PUT /comp_ends/1.json
  def update
    respond_to do |format|
      if @comp_end.update(comp_end_params)
         format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comp_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comp_ends/1
  # DELETE /comp_ends/1.json
  def destroy
    @comp_end.destroy
    respond_to do |format|
      format.html { redirect_to comp_ends_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comp_end
      @comp_end = CompEnd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comp_end_params
      params.require(:comp_end).permit(:interessado_id, :arquivo)
    end
end
