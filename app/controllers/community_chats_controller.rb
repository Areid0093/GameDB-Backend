class CommunityChatsController < ApplicationController

    def index
        community_chats = CommunityChats.all
        render json: community_chats(include [:users, :messages])
    end

    def show
        community_chat = CommunityChat.find(params[:id])
        render json: community_chat(include [:users, :messages])
    end

end
