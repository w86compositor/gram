class Photobooth < ApplicationRecord[5.1]
  belongs_to :user,  optional: true
  #validates_presence_of :user

    has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
