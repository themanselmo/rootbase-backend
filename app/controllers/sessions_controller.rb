class SessionsController < ApplicationController
    skip_before_action :authorize, only: [:create]
    
    def create 
        organization = Organization.find_by(name: params[:name])
        
        if organization&.authenticate(params[:password])
            session[:user_id] = organization.id 
            render json: organization, status: :created
        else
            render json: {errors: ["Invalid username or password"]}, status: :unauthorized
        end

    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end
