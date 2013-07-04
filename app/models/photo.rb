class Photo < ActiveRecord::Base
  attr_accessible :name, :pic, :mem_id, :user_id

  has_attached_file :pic, styles: { small: "150x150>", medium: "400x400>"},
                          #:convert_options => { :all => "-blue-shift 1.5" },
                          :storage => :s3,
                          :s3_credentials => "#{Rails.root}/config/s3_credentials.yml",                          :bucket => "adventure-memories"
                          #url: "/:attachment/:id/:style/:basename.:extension"
                          #path: ":rails_root/public/:attachment/:id/:style/:basename.:extension"

  validates_attachment_size :pic, less_than: 5.megabytes
  validates_attachment_content_type :pic, content_type: ['image/jpeg', 'image/png']

  process_in_background :pic

end
