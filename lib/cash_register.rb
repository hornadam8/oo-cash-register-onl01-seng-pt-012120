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
    if @discount != 0
      percentage = 1 - (@discount/100)
    end
    percentage * @total
  end
    
end
