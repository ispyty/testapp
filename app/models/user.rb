class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :navpic => "30x30" }, :default_url => "/images/:style/missing.png",
    :url => "/assets/users/:id/:style/:filename",
 		:path => ":rails_root/public/assets/users/:id/:style/:filename"

  validates_attachment_presence :avatar
	validates_attachment_size :avatar, :less_than => 2.megabytes
	validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']

end
