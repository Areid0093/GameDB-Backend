class CreateCommunityChats < ActiveRecord::Migration[6.0]
  def change
    create_table :community_chats do |t|
      t.integer :community_id
      t.timestamps
    end
  end
end
