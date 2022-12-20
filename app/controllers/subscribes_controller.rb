class SubscribesController < ApplicationController
    def index
        @subs = Subscribe.all
    end

    def new
        @sub = Subscribe.new        
    end

    def create
        @sub = Subscribe.new(sub_params)
        
        if @sub.save
            redirect_to subscribes_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
        def sub_params
            params.require(:subscribe).permit(:user_id,:sub_to_id)
        end
end
