class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :first_name
      t.string :last_name
      t.references :company, index: true, foreign_key: true

      t.timestamps
    end
  end
end
