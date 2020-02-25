class Api::V1::UsersController < ApplicationController 
    # skip_before_action :authorized
    # , only: [:create]
    def index
        users = User.all
        # options = {
        #     include: [:pictures]
        # }
        render json: UserSerializer.new(users)
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt: token}, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: { update: params[:id]}
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        user.food_posts.destroy
        user.exercise_posts.destroy
        user.notes.destroy
        render json: { destroy: params[:id] }
    end

    private
       
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name, :age, :diet_type, :weight, :height, :email, :gender, :calorie_goal, :bio, :image)
    end

    def query_params

    end

end