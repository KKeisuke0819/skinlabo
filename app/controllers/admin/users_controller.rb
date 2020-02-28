class Admin::UsersController < ApplicationController
  	def index
  		@user = User.all.with_deleted
  	end

  	def show
  		@user = User.with_deleted.find(params[:id])
  	end

  	def edit
  		@user = User.with_deleted.find(params[:id])
  	end

  	def update
  		@user = User.with_deleted.find(params[:id])

    	if params[:user][:deleted_at] == "true"
      	#復活
      	@user.restore
    	else
      	#削除
      	@user.destroy
    	end
    		@user.update(user_params)
  			redirect_to admin_user_path
  	end
  private
  	def user_params
  		params.require(:user).permit(:user_name, :email)
  	end
end
