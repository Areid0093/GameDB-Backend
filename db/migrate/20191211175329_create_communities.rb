class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :description
      t.string :creator
      t.string :title
      t.string :platform
      t.string :creatorPhoto
      t.integer :creatorId


      t.timestamps
    end
  end
end
