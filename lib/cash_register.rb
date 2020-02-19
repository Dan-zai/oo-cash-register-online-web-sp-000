class CashRegister

attr_accessor :total, :discount, :items, :last_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @final_price = 0
  end

  def add_item(title, price, quantity = 1)
    self.items += [title] * quantity
    self.last_price = price * quantity
    self.total += price * quantity
  end

  def apply_discount
    if self.discount > 0
      self.total *= (1 - self.discount / 100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total -= self.last_price
  end

end