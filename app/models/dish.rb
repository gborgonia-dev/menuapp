class Dish < ActiveRecord::Base
	has_many :comments
	has_many :order_items
	belongs_to :user
	has_attached_file :avatar, :styles => { :medium => "300x300>" }, :default_url => "missing.jpg"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	validates :name, :description, :price, :category, :avatar, presence: true
	validates_numericality_of :price, allow_blank: true

	def self.search(search)
		where("name LIKE ?", "%#{search}%")
	end
end
