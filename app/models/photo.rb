class Photo < ActiveRecord::Base
  attr_accessible :name, :pic

  has_attached_file :pic, styles: { small: "150x150>", medium: "400x400>"},
                          #:convert_options => { :all => "-blue-shift 1.5" },
                          url: "/:attachment/:id/:style/:basename.:extension",
                          path: ":rails_root/public/:attachment/:id/:style/:basename.:extension"

  validates_attachment_size :pic, less_than: 5.megabytes
  validates_attachment_content_type :pic, content_type: ['image/jpeg', 'image/png']
end
