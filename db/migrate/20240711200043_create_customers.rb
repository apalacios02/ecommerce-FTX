class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :address
      t.string :phone
      t.datetime :created_at

      t.timestamps
    end
  end
end
