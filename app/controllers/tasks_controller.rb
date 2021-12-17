class TasksController < ApplicationController

    def create 
        task = Task.create(task_params)

        if task
            render json: task, status: :created
        else
            render json: {error: [task.errors]}, status: :unprocessable_entity
        end

    end

    def update 
        task = Task.find_by(id: params[:id])

        if task
            task.update(task_params)
            render json: task, status: :ok
        else
            render json: {erros: [task.errors]}
        end
    end


    private

    def task_params 
        params.permit(
            :name,
            :status,
            :due_date
        )

    end

end
