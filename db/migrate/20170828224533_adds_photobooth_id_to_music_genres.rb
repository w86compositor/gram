class AddsPhotoboothIdToMusicGenres < ActiveRecord::Migration[5.1]
  def self.up
    add_column :music_genres, :photobooth_id, :integer
  end

  def self.down
    remove_column :music_genres, :photobooth_id, :integer
  end
end
