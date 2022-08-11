class AddNumberInvoiceToInvoces < ActiveRecord::Migration[7.0]
  def change
    add_column :invoices, :number_invoice, :string
  end
end
