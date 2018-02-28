class AddVideotoVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :video, :string
  end
end
