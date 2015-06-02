class OrderItem < ActiveRecord::Base
	belongs_to :dish
	belongs_to :order	

	validates :quantity, :numericality => {greater_than: 0, only_integer: true}

	#before_save :finalize

	#def unit_price
	#	if persisted?
	#		self[:unit_price]
	#	else
	#		dish.price
	#	end
	#end
	#def total_price
	#	unit_price * quantity
	#end

	#private

	#def finalize
	#	self[:unit_price] = unit_price
	#	self[:total_price] = quantity * self[:unit_price]
	#end

end