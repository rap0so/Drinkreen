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

    def update
        @thisBeer = Beer.find(params[:id])
        render "update"
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

    def updateBeer
        @beerId = params[:id]
        @beer = Beer.find(@beerId)

        @beer.title = params[:title]
        @beer.description = params[:description]
        
        if @beer.save
            return redirect_to "/beer/" + @beerId
        end

        return render json: @beer.errors.full_messages
    end
end
