class EmployeesController < ApplicationController

    def show
        employee = Employee.find_by(id: session[:employee_id])

        if employee
            render json: employee, status: :ok
        else
            render json: {error: ["Not found"]}, status: :not_found
        end

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
            :organization_id
        )
    end

end
