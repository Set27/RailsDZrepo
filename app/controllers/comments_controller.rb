class CommentsController < ApplicationController
    def index
        @comments = Comment.all
    end

    def show
        @comment = Comment.find(params[:id])
    end

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)

        if @comment.save
            redirect_to post_url(@comment.post_id)
        else
            render :new, status: :unprocessable_entity
        end
        
    end

    private
        def comment_params
            params.require(:comment).permit(:body, :post_id, :user_id)
        end
end
