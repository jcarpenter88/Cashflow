class UsersController < ApplicationController
  
  def index
    @users = User.find(:all)
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    current_user
  end

  # PUT /users/1
  def update
    if current_user.update_attributes params[:user]
      redirect_to dashboard_index_path
    else
      render :edit
    end 
  end

end
