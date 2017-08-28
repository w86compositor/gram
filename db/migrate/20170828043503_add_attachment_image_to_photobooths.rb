class AddAttachmentImageToPhotobooths < ActiveRecord::Migration[5.1]
  def self.up
    change_table :photobooths do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :photobooths, :image
  end
end
