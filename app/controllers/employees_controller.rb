class EmployeesController < ApplicationController

    def show
        employee = Employee.find_by(id: session[:employee_id])
        avatar = rails_blob_path(employee.avatar)
        
        if employee
            render json: {employee: employee, avatar: avatar}, status: :ok
        else
            render json: {error: ["Not found"]}, status: :not_found
        end

    end

    def update 

        employee = Employee.find(params[:id])

        employee.update(avatar: params[:avatar])
        avatar_url = rails_blob_path(employee.avatar)

        render json: {employee: employee, avatar_url: avatar_url}
    end

    def create
        employee = Employee.create(employee_params)

        if employee.valid?
            render json: employee, status: :created
        else
            render json: {error: employee.error}, status: :unprocessable_entity
        end
    end

    private

    def employee_params
        params.permit(
            :name,
            :pin,
            :organization_id,
            :avatar
        )
    end

end
