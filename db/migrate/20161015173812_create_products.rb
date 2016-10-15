class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :type_name
      t.string :comment

      t.timestamps null: false
    end
  end
end
