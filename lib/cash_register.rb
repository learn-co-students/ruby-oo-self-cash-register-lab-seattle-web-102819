class CashRegister

    attr_accessor :discount, :total, :recent_transation

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @recent_transation = []
    end

    def add_item(title, price, quantity = 1)
        @items.concat(Array.new(quantity, title))
        @total += price * quantity
        @recent_transation.clear
        @recent_transation << price
        @recent_transation << quantity
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            @total -= @discount/100.00 * @total
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
            @recent_transation[1].times do
            @items.pop
        end
            @total -= (@recent_transation[0] * @recent_transation[1])
        end
    


end




