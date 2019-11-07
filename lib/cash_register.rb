
class CashRegister
 
 attr_accessor :discount, :total, :item
  @@all []
  
  def initialize (discount=0)
      @total = 0
      @discount= 20
      @@all << self
   
    end
   
   def self.all
    @@all
  end
   
  def total
     @total
  end
 
  def add_item(title, amount, quantity=1)
     self.total += amount * quantity
         quantity.times do
         items << title
     end
     self.last_transaction = amount * quantity
  end

end
