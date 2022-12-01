class SubscribesController < ApplicationController
    def show
        @sub = Subscribe.find(params[:id])
    end

    def index
        @subs = Subscribe.all
    end
end
