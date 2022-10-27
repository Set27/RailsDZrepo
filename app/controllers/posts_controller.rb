class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def create
        @user = User.find(params[:user_id])
    end

    def show
        @post = Post.find(params[:id])
    end
    

    def post_params
        params.require(:post).permit(:title, :body, :user_id)
    end

end
