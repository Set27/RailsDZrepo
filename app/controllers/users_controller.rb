class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def sub
        Subscribe.create(current_user, )
    end

    private


    def user_params
        params.require(:id).permit(:email)
    end

    
end
