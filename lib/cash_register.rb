class CashRegister
  
  attr_accessor :total , :discount, :items
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end
  
  def total
    return @total
  end
  
  def add_item(item,price,num = 1)
    value = price * num
    @total += value
    num.times do 
      @items << item
    end
  end
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * @discount)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    
    
end
