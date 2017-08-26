class CreatePhotobooths < ActiveRecord::Migration[5.1]
  def change
    create_table :photobooths do |t|
      t.string :filename
      t.string :content_type
      t.binary :file_content

      t.timestamps
    end
  end
end
