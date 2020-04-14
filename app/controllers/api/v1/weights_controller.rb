class Api::V1::WeightsController < ApplicationController 
    skip_before_action :authorized
    # , only: [:create]
    def index
        weights = Weight.where(query_params)
        # options = {
        #     include: [:pictures]
        # }
        render json: WeightSerializer.new(weights)
    end

    def create
        weight = Weight.create(weight_params)
        # if weight.valid?
            render json: { weight: WeightSerializer.new(weight) }
        # else
        #     render json: { error: 'failed to create weight'}
        # end
    end

    def show
        weight = Weight.find(params[:id])
        render json: WeightSerializer.new(weight)
    end

    def update
        weight = Weight.find(params[:id])
        weight.update(user_params)
        render json: { update: params[:id]}
    end

    def destroy
        weight = Weight.find(params[:id])
        weight.destroy
        render json: { destroy: params[:id] }
    end

    private
       
    def weight_params
        params.require(:weight).permit(:user_id, :current_weight, :date)
    end

    def query_params
        params.permit(:date, :weight, :user_id)
    end

end