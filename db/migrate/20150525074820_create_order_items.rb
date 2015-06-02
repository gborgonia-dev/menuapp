class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
    	t.float :quantity
    	t.belongs_to :dish
    	t.belongs_to :order
    end
  end
end
