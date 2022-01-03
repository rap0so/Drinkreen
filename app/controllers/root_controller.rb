class RootController < ApplicationController
    def health
        @response = {
            :status => 200,
            :message => 'online'
        }

        render json: @response
    end

    def addBeer
        @beer = Beer.new(:title => params[:title], :description => params[:description])
        if @beer.save
            return render json: true
        end

        return render json: @beer.errors.full_messages
    end
end
