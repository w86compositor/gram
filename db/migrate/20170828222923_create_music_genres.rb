class CreateMusicGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :music_genres do |t|

      t.timestamps
    end
  end
end
