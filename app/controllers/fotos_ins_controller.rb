class FotosInsController < ApplicationController
  before_action :set_fotos_in, only: [:show, :edit, :update, :destroy]

  # GET /fotos_ins
  # GET /fotos_ins.json
  def index
    @fotos_ins = FotosIn.all
  end

  # GET /fotos_ins/1
  # GET /fotos_ins/1.json
  def show
  end

  # GET /fotos_ins/new
  def new
    @fotos_in = FotosIn.new
  end

  # GET /fotos_ins/1/edit
  def edit
  end

  # POST /fotos_ins
  # POST /fotos_ins.json
  def create
    @fotos_in = FotosIn.new(fotos_in_params)

    respond_to do |format|
      if @fotos_in.save
        format.html { redirect_to @fotos_in, notice: 'Fotos in was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fotos_in }
      else
        format.html { render action: 'new' }
        format.json { render json: @fotos_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotos_ins/1
  # PATCH/PUT /fotos_ins/1.json
  def update
    respond_to do |format|
      if @fotos_in.update(fotos_in_params)
        format.html {  redirect_to :back }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fotos_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotos_ins/1
  # DELETE /fotos_ins/1.json
  def destroy
    @fotos_in.destroy
    respond_to do |format|
      format.html { redirect_to fotos_ins_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotos_in
      @fotos_in = FotosIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotos_in_params
      params.require(:fotos_in).permit(:inauguracao_id, :foto)
    end
end
