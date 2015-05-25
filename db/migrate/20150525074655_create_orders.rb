class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.float :total_price
    	t.date :order_date
    	t.belongs_to :user
    end
  end
end