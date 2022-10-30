class CommentsController < ApplicationController
    def index
        @comments = Comment.all
    end

    def find
        @userTitle = User.find(params[:user_id]).login
    end

    def comment_params
        params.require(:comment).permit(:body,:post_id, :user_id)
    end
end
