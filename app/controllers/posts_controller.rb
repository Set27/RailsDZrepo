class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    def index
        params[:tag] ? @posts = Post.tagged_with[params[:tag]] : @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params.merge(user_id: current_user.id))
        if @post.save
            redirect_to @post
        else
            render :new, status: :unprocessable_entity
        end
    end

    def publish
        @post = Post.find(params[:id])
        @post.update(draft: false)
        redirect_back fallback_location: post_path(@post)
    end

    private
        def post_params
            params.require(:post).permit(:user_id, :title, :body, :content, :tag_list, :tag, { tag_ids: [] }, :tag_ids)
        end

        def find_post
            @post = Post.find(params[:id])
          end
end