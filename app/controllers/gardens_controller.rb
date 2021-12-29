class GardensController < ApplicationController


    def create 
        garden = Garden.new(garden_params)
        garden[:organization_id] = session[:user_id]

        garden.save
        if garden
            render json: garden, status: :created
        else
            render json: {error: [garden.errors]}, status: :unprocessable_entity
        end

    end


    private

    def garden_params
        params.permit(:name)
    end
end
