class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 10, scale: 2 
      t.references :invoice, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
