class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :tags
      t.string :cloudinary_url
      t.float :price
      t.integer :number_of_views
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
