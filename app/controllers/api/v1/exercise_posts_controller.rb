class Api::V1::ExercisePostsController < ApplicationController 
    # skip_before_action :authorized
    def index
        exercise_posts = ExercisePost.where(query_params)
        render json: ExercisePostSerializer.new(exercise_posts)
    end

    def create
        exercise_post = ExercisePost.create(exercise_post_params)
        if exercise_post.valid?
            render json: { exercise_post: ExercisePostSerializer.new(exercise_post)}
        else 
            render json: { error: 'failed to create exercisepost'}
        end
    end

    def show
        exercise_post = ExercisePost.find(params[:id])
        render json: ExercisePostSerializer.new(exercise_post)
    end

    def update
        exercise_post = ExercisePost.find(params[:id])
        exercise_post.update(exercise_post_params)
        render json: { update: params[:id]}
    end

    def destroy
        exercise_post = ExercisePost.find(params[:id])
        exercise_post.destroy
        render json: { destroy: params[:id] }
    end

    private

    def exercise_post_params
        params.require(:exercise_post).permit(:name, :image, :calories, :user_id, :note, :date, :time)
    end

    def query_params
        params.permit(:date, :user_id)
    end
end