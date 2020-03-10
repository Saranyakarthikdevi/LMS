class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :department
      t.string :email
      t.integer :plan_type

      t.timestamps
    end
  end
end
