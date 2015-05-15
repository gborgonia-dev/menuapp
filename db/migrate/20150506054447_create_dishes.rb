class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :category
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
