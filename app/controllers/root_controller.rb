class RootController < ApplicationController
    def health
        @response = {
            :status => 200,
            :message => 'online'
        }

        render json: @response
    end

    def product
        render json: params[:id]
    end

end
