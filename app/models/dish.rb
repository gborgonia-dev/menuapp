class Dish < ActiveRecord::Base
	belongs_to :user
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.jpg"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	validates :name, :description, :price, :category, presence: true
	validates_numericality_of :price, allow_blank: true
end
