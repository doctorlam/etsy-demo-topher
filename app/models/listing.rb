class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "NotFound.png"
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
  belongs_to :user
end