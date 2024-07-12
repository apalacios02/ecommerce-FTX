class CreatePages < ActiveRecord::Migration[7.1]
  def change
    create_table :pages do |t|
      t.string :name
      t.text :content
      t.string :slug

      t.timestamps
    end
  end
end
