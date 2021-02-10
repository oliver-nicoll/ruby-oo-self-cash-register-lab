class CashRegister
    attr_reader :discount, :items
    attr_accessor :total
    
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end
  
    def add_item(title, price, quantity = 1)
    #   item_info = {}
    #   item_info[:name] = item
    #   item_info[:price] = price
    #   item_info[:quantity] = quantity
    #   @cart << item_info
    #   @total += price * quantity

    #   quantity.times do
    #     @items << title
    #   end
    quantity.times do
        @items << title
    end
      @last_total = @total
      @total += price * quantity
    end
  
    def apply_discount
      @total -= (@total * @discount.to_f / 100).to_i
        if @discount != 0
        return "After the discount, the total comes to $#{@total}."
        else 
      return "There is no discount to apply."
        end
    end 
  
    # def items
    # #   item_names = []
    # #   @cart.each do | item_info |
    # #     #test expects product name * quantity...
    # #     for qty in 1..item_info[:quantity] 
    # #       item_names << item_info[:name]
    # #     end 
    # #   end 
    #   item_names
    # end 

    def void_last_transaction
    #     @total -= @void_last_transaction
    # end
    @total = @last_total
    end

  end

