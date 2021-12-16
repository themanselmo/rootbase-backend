class OrganizationsController < ApplicationController
    skip_before_action :authorize, only: [:create]

    def create
        organization = Organization.create(org_params)   
        if organization.valid?
            session[:user_id] = organization.id
            render json: organization, status: :created
        else
            render json: {errors: organization.errors.full_messages}, status: :unprocessable_entity
        end

    end

    def show
        organization = Organization.find_by(id: session[:user_id])

        if organization
            render json: organization, status: :ok
        else
            render json: {error: ["Not found"]}, status: :not_found
        end

    end

      private

    def org_params
        params.permit(
            :name,
            :password
        )
    end
end
