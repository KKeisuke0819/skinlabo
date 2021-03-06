class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def bye
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(current_user)
    end

    def update_dl
        @user = User.find(params[:id])
        @user.destroy
        redirect_to root_path
    end
  private
    def user_params
      params.require(:user).permit(:user_name)
    end
end
