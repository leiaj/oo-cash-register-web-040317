require 'pry'

class CashRegister

  attr_accessor :total, :discount, :title, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @title = title
    @items = []
  end


  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_item = price
  end

  def apply_discount
    if discount > 0
      @total -= @total * discount/100
      "After the discount, the total comes to $800."
    elsif discount == 0
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item
  end

end
