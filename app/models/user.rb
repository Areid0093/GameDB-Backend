class User < ApplicationRecord
    has_many :messages
    has_many :follows
    has_many :favorites
    has_many :user_communities
    has_many :communities, through: :user_communities
    belongs_to :community_chat, optional: true

    # validates :username, presence: true
    # validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    has_secure_password

end
