class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "User was created successfully"
      redirect_to articles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find_by(id: params[:id])

    unless @user
      flash[:alert] = "User not found"
      redirect_to articles_path
    end
  end

  def update
    @user = User.find_by(id: params[:id])

    unless @user
      flash[:alert] = "User not found"
      redirect_to articles_path and return
    end

    if @user.update(user_params)
      flash[:notice] = "User updated successfully"
      redirect_to articles_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end