class RootController < ApplicationController
    def health
        @response = {
            :status => 200,
            :message => 'online'
        }

        render json: @response
    end

    def home
        @allBeers = Beer.all
        render "home"
    end

    def beer
        @thisBeer = Beer.find(params[:id])
        render "beer"
    end

    def findBeer
        @beers = Beer.where("title LIKE ?", "%" + params[:query] + "%")
        render "find-beer"
    end

    def addBeer
        @beer = Beer.new(:title => params[:title], :description => params[:description])
        if @beer.save
            return redirect_to "/home"
        end

        return render json: @beer.errors.full_messages
    end
end
