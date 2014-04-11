class Product < ActiveRecord::Base

  has_attached_file :picture, styles: { small: "100x100>", medium: "250x250>" }

  validates_attachment_content_type :picture, :content_type =>
  ["image/jpg", "image/jpeg", "image/png"]
end
