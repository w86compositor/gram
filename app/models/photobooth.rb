class Photobooth < ApplicationRecord
  belongs_to :user,  optional: true
  #validates_presence_of :user
  def change
    drop_table :products
  end
end
