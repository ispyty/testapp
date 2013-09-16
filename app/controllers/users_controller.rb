class UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def profile
    @user = current_user
  end

  def create
    @user = User.create( params[:user, :avatar] )
  end

private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
