class MessagesController < ApplicationController

    def create
        message = Message.create(message_params)
        render json: message.to_json(message_serializer)
    end

    private

    def message_params
        params.require(:message).permit(:user_id, :community_chat_id, :content)
    end

    def message_serializer
        {
            :include => {:user => {:only => [:username]}
        }
    end

end
