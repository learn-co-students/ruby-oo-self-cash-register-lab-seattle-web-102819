# http://chitownblogger.com/2017/08/14/mixing_integers_and_floats/
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = [] 
    end
    def add_item(title, price, quantity=1)
        self.total += price * quantity
        quantity.times do
        items << title
        end
        self.last_transaction = price * quantity
    end
    def apply_discount
        if discount == 0
            return "There is no discount to apply."
        else
            self.total -= (total * discount * 0.01).to_i
            return "After the discount, the total comes to $#{self.total}."
        end
    end
    def void_last_transaction
        self.total = self.total - last_transaction
    end
end