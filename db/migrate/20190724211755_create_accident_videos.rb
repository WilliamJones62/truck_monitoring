class CreateAccidentVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :accident_videos do |t|
      t.integer :truck_accident_id
      t.string :video
      t.string :title

      t.timestamps
    end
  end
end
