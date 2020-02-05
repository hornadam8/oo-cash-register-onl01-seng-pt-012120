class CashRegister
  
  attr_accessor :total , :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def total
    return @total
  end
  
  def add_item(item,price,num = 1)
    value = price * num
    @total += value
  end
  
  def apply_discount
    percentage = 1 - (@discount/100)
    percentage * @total
  end
    
end
