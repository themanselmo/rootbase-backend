class GardenTasksController < ApplicationController

    def create 
        garden_task = GardenTask.create(garden_task_params)

        if garden_task 
            render json: garden_task, status: :created
        else
            render json: { error: garden_task.errors}, status: :unprocessable_entity
        end
    end


    private

    def garden_task_params 
        params.permit(
            :task_id,
            :garden_id
        )

    end
end
