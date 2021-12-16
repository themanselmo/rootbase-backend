class EmployeesController < ApplicationController

    def show
        employee = Employee.find_by(id: session[:employee_id])

        if employee
            render json: employee, status: :ok
        else
            render json: {error: ["Not found"]}, status: :not_found
        end

    end

end
