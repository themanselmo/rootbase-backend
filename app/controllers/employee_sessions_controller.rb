class EmployeeSessionsController < ApplicationController
    skip_before_action :authorize, only: [:create]
    
    def create 
        organization = Organization.find_by(id: session[:user_id])
        employee = organization.employees.find_by(id: params[:id])

        if employee[:pin] === (params[:pin])
            session[:employee_id] = employee.id
            
            avatar_url = rails_blob_path(employee.avatar)

            render json: {employee: employee, avatar_url: avatar_url}, status: :created
        else
            render json: {errors: ["Invalid username or password"]}, status: :unauthorized
        end

    end

    def destroy
        session.delete :employee_id
        head :no_content
    end

end
