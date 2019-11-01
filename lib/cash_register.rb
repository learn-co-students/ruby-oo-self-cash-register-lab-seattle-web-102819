require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(item_name, item_price, item_quantity = 1)
        self.total += (item_price * item_quantity)
        item_quantity.times do 
            @items << item_name
        end
        self.last_transaction = (item_quantity * item_price)
    end

    def apply_discount
        if @discount != 0
            self.total = (total.to_f * ((100 - discount.to_f) / 100)).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end




end
