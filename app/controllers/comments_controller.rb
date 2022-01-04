class CommentsController < ApplicationController

    def create 
        comment = Comment.create(comment_params)

        if comment 
            render json: comment, status: :ok
        else
            render json: {errors: [comment.errors]}, status: :unprocessable_entity
        end
    end

    def show 
        comments = Comment.where(task_id: params[:id])

        if comments 
            render json: comments, status: :ok
        else
            render json: {errors: comments.errors}, status: :not_found
        end
    end

    private 
    
    def comment_params
        params.permit(
            :employee_id,
            :task_id,
            :content
        )
    end
end
