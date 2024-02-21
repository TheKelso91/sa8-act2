module Payments
    class Invoice
      attr_accessor :invoice_number, :amount, :due_date
  
      def initialize(invoice_number, amount, due_date)
        @invoice_number = invoice_number
        @amount = amount
        @due_date = due_date
      end
  
      def to_s
        "Invoice ##{@invoice_number} - Amount: $#{@amount} - Due Date: #{@due_date}"
      end
    end
  
    class Receipt
      attr_accessor :receipt_number, :amount, :payment_date
  
      def initialize(receipt_number, amount, payment_date)
        @receipt_number = receipt_number
        @amount = amount
        @payment_date = payment_date
      end
  
      def to_s
        "Receipt ##{@receipt_number} - Amount: $#{@amount} - Payment Date: #{@payment_date}"
      end
    end
end
  
invoice_1 = Payments::Invoice.new(1, 100.00, '2024-03-01')
receipt_1 = Payments::Receipt.new(101, 100.00, '2024-02-21')
  
puts invoice_1
puts receipt_1
