#este controlador administra los usuarios con la ayuda de la gema devise.
class UsersController < ApplicationController
	load_and_authorize_resource
before_action :set_user, only: [:change_role,:change_enable, :destroy, :show, :edit]
  # GET /user_managers
  # GET /user_managers.json
  def index
    @users = User.all
  end

  # POST /user_managers
  # POST /user_managers.json

  def show
    
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params.require(:user).permit(:username,:email, :password, :password_confirmation))
      @user.save
      flash[:success] = "Usuario Actualizado"
      redirect_to :controller => :users, :action => "index"      
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def change_role
    @user.change_role
      respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def change_enable
    @user.change_enable
      respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username,:email, :password, :password_confirmation)
    end


end
