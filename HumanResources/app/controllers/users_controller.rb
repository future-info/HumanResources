class UsersController < ApplicationController
  layout 'my_center', :only => [:my_center, :new_detail]
  def show
    @user = User.find(params[:id])
  end

  def my_center
    @user = User.find(params[:id])
  end

  def new_detail
    @user = User.find(params[:id])
  end

  def create_detail
    @user = User.find(params[:id])
    @user.update_attributes(career: params[:user][:career], career_years: params[:user][:career_years], desc: params[:user][:desc])
    redirect_to my_center_user_path(@user)
  end

  protected

  def user_params
    params.require(:user).permit(:career, :career_years, :desc)
  end
end
