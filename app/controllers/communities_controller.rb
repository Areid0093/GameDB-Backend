class CommunitiesController < ApplicationController
    # skip_before_action :authorized, only: [:show]

    def index
        communities = Community.all
        render json: communities.to_json
    end

    def show
        render json: Community.find(params[:id]).to_json
    end

    def create
        new_community = Community.create(community_params)
        render json: new_community
    end

    def update
        community = Community.find(params[:id]).update(community_params)
        render json: community
    end

    private

    def community_params
        params.require(:community).permit(:id, :name, :description, :creator, :title)
    end

    def community_serializer
        {
            :only => [:community, :id, :name, :description, :creator, :title],

            # :include => {:user => {
            #     :only => [:username]
            # }}
        }
    end



end
