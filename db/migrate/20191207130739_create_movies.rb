class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.text :title
      t.text :caption
      t.string :video

      t.timestamps
    end
  end
end
