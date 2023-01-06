class CommentsController < ApplicationController
    before_action :find_commentable

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
        @comment = @commentable.comments.new(comment_params.merge(user_id: current_user.id))
        # debugger
        # @comment.post_id = params[:post_id]
        if @comment.save
            redirect_back fallback_location: post_path(@commentable)
        else
            # render :new, status: :unprocessable_entity
        end
        
    end

    private
        def comment_params
            params.require(:comment).permit(:body, :user_id, :post_id)
        end

        def find_commentable
            @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
            @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
          end
end
