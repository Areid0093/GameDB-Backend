class CommunitiesController < ApplicationController
    # skip_before_action :authorized, only: [:index, :show]
    # before_action :authorized, only: [:create, :update]
    skip_before_action :authorized

    def index
        communities = Community.all
        render json: communities
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
        params.require(:community).permit!
    end

    def community_serializer
        {
            :include => {:user => {
                :only => [:email, :id]
            }}
        }
    end



end
