class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :number
      t.string :subtype
      t.string :year
      t.integer :sort
      t.boolean :active

      t.timestamps null: false
    end
  end
end
