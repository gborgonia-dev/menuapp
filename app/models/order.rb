class Order < ActiveRecord::Base
	belongs_to :user
	has_many :order_items
	#before_save :update_subtotal

	#def subtotal
	#	order_items.collect { |orderitem| orderitem.valid?  ? (orderitem.quantity * orderitem.unit_price) : 0 }.sum
	#end

	#private
	#def update_subtotal
	#	self[:subtotal] = subtotal
	#end	

end