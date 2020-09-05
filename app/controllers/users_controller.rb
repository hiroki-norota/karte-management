class UsersController < ApplicationController
  
  def index
  end

  def show
  end

  def update
    if current_user.update(user_params)
      render_to root_path
    else
      render :edit
    end
  end

  def logout
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
