require "pry"
class CashRegister
    attr_accessor :total, :discount, :items
    def initialize(discount= 0)
    @total = 0
    @discount =discount
    @items = []
    end

    def add_item(item,price,quantity = 1)
        quantity.times do  #loops on the items and add into the array
        @items << item
        end
      @last_transaction = price * quantity
      @total += @last_transaction
      
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
        @total = @total - (@total * @discount/100)
        "After the discount, the total comes to $#{total}."
        end
    end
    
    def void_last_transaction
        @total -= @last_transaction
    end
end

