class AddProvinceRefToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_reference :customers, :province, foreign_key: true

    # Run a separate migration or update existing records to set province_id

    # Then make the column non-nullable
    change_column_null :customers, :province_id, false
  end
end
