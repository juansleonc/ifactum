class InvoicesController < ApplicationController
    protect_from_forgery with: :null_session
    def index
        @invoices = Invoice.all
    end

    def new
    end

    def create

        invoice = Invoice.new(invoice_param)
        invoice.save
        redirect_to invoices_path
    end
    
    private 

    def invoice_param
        params.require(:invoice).permit(:number_invoice,:first_name, :last_name, :company_id,
            items_attributes: [:name, :description, :price])
            
    end
    
end
