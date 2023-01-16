class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def subscribe
        @user = User.find(params[:id])
        @subscribe = Subscribe.new(user: current_user, sub_to: @user)
        @subscribe.save
        redirect_to user_path(@user)
    end

    def unsubscribe
        @user = User.find(params[:id])
        @subscribe = Subscribe.find_by(user: current_user, sub_to: @user)
        @subscribe.destroy
        redirect_to user_path(@user)
    end

    private

    def authorize_user
        authorize!(@user || User.new)
    end
    
    def user_params
        params.require(:id).permit(:email)
    end

    
end
