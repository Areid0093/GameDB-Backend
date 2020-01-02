class UserCommunitiesController < ApplicationController
    skip_before_action :authorized

    def index
        user_communities = UserCommunity.all
        render json: user_communities.to_json
    end

    def show
        render json: UserCommunity.find(params[:id]).to_json
    end

    def create
        new_user_community = UserCommunity.create(user_community_params)
        render json: new_community
    end

    def update
        user_community = UserCommunity.find(params[:id]).update(user_community_params)
        render json: user_community
    end

    private

    def user_community_params
        params.require(:user_community).permit!
    end

    # def community_serializer
    #     {
    #         :include => {:user => {
    #             :only => [:email, :id]
    #         }}
    #     }
    # end
end
