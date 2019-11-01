require 'pry'

class CashRegister
    attr_accessor(:total, :discount, :items, :last_transaction)

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        return @total
    end

    def add_item(item_name, item_price, num_of_items = 1)
        self.total += (item_price * num_of_items)
        num_of_items.times do
            @items << item_name
        end
        self.last_transaction = (item_price * num_of_items)
    end

    def apply_discount
        if @discount != 0
            self.total = (total.to_f * ((100.to_f - discount.to_f) / 100)).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        return @items
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end