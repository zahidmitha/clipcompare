class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :video
      t.integer :votes

      t.timestamps
    end
  end
end
