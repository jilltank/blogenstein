class BlogPost < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	has_attached_file :theme, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :theme, :content_type => /\Aimage\/.*\Z/
end
