class Api::V1::FoodPostsController < ApplicationController 
    skip_before_action :authorized
    def index
        food_posts = FoodPost.where(query_params)
        render json: FoodPostSerializer.new(food_posts)
    end

    def create
        food_post = FoodPost.create(food_post_params)
        if food_post.valid?
            render json: { food_post: FoodPostSerializer.new(food_post) }
        else 
            render json: { error: 'failed to create foodpost'}
        end
    end

    def show
        food_post = FoodPost.find(params[:id])
        render json: FoodpostSerializer.new(food_post)
    end

    def update
        food_post = FoodPost.find(params[:id])
        food_post.update(food_post_params)
        render json: { update: params[:id]}
    end

    def destroy
        food_post = FoodPost.find(params[:id])
        food_post.destroy
        render json: { destroy: params[:id] }
    end

    private

    def food_post_params
        params.require(:food_post).permit(:name, :image, :calories, :fat, :protein, :carbs, :cholesterol, :potassium, :sugar, :sodium, :saturated_fat, :dietary_fiber, :note, :user_id, :meal, :date, :time)
    end

    def query_params
        params.permit(:date, :user_id, :meal)
    end
end