class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Create new account succesfully"
    else 
      render :new, status: :unprocessable_entity # with rails 7.0.x, need to specify the status
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end