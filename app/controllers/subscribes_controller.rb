class SubscribesController < ApplicationController
    def show
        @sub = Subscribe.find(params[:id])
    end

end
