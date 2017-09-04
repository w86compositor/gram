class AddImageChallengeTypeToPhotobooths < ActiveRecord::Migration[5.1]
  def change
    add_column :photobooths, :image_challenge_type, :string
  end
end
