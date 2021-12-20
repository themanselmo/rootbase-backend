class EmployeeTasksController < ApplicationController

    def create 
        et = EmployeeTask.create(employee_tasks_params)

        if et
            render json: et, status: :created
        else
            render json: {error: [et.errors]}, status: :unprocessable_entity
        end
    end

    def my_tasks
        myTasks = EmployeeTask.where(employee_id: session[:employee_id])

        if myTasks 
            render json: myTasks, status: :ok
        else
            render json: {error: [my_tasks.errors]}, status: :not_found
        end
    end

    private 

    def employee_tasks_params
        params.permit(
            :employee_id,
            :task_id
        )
    end
end
