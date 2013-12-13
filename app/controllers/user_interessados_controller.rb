class UserInteressadosController < ApplicationController
  before_action :set_user_interessado, only: [:show, :edit, :update, :destroy]

  # GET /user_interessados
  # GET /user_interessados.json
  def index
    @user_interessados = UserInteressado.all
  end

  # GET /user_interessados/1
  # GET /user_interessados/1.json
  def show
  end

  # GET /user_interessados/new
  def new
    @user_interessado = UserInteressado.new
  end

  # GET /user_interessados/1/edit
  def edit
  end

  # POST /user_interessados
  # POST /user_interessados.json
  def create
    @user_interessado = UserInteressado.new(user_interessado_params)

    respond_to do |format|
      if @user_interessado.save
        format.html { redirect_to @user_interessado, notice: 'User interessado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_interessado }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_interessado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_interessados/1
  # PATCH/PUT /user_interessados/1.json
  def update
    respond_to do |format|
      if @user_interessado.update(user_interessado_params)
        format.html { redirect_to @user_interessado, notice: 'User interessado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_interessado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_interessados/1
  # DELETE /user_interessados/1.json
  def destroy
    @user_interessado.destroy
    respond_to do |format|
      format.html { redirect_to user_interessados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_interessado
      @user_interessado = UserInteressado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_interessado_params
      params.require(:user_interessado).permit(:user_name, :user_password, :user_email)
    end
end
