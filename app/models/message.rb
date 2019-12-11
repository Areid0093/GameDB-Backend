class Message < ApplicationRecord
    belongs_to :user
    belongs_to :community_chat
end
