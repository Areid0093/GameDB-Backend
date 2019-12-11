class FollowsController < ApplicationController

    def index
        follows = Follow.all
        render json: follows.to_json
    end

    def show
        render json: Follow.find(params[:id]).to_json
    end

    def create
        new_follow = Follow.create(follow_params)
        render json: new_follow.to_json
    end

    def destroy
        render json: Follow.find(params[:id]).destroy
    end

    private

    def follow_params
        params.require(:follow).permit(:user_id, :game_id)
    end
    
end
