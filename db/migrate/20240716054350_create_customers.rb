class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    unless table_exists?(:customers)
      create_table :customers do |t|
        t.string :name
        t.string :email
        t.string :phone
        t.string :address
        t.references :province, foreign_key: true

        t.timestamps
      end
    end
  end
end
