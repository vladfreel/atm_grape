class Atm < ApplicationRecord
  
  def withdrawal(amount)
    atm = Atm.first
    @divided_amount = amount
    check_field(atm.fifty, 50, atm)
    check_field(atm.twenty_five, 25, atm)
    check_field(atm.ten, 10, atm)
    check_field(atm.five, 5, atm)
    check_field(atm.two, 2, atm)
    check_field(atm.one, 1, atm)
    atm.save!
  end

  def load(hash)
    atm = Atm.first
    balance = 0
    hash.each do |val|
      case val[0]
      when 'one'
        atm.one = atm.one + val[1]
        balance += val[1]*1
      when 'two'
        atm.two = atm.two + val[1]
        balance += val[1]*2
      when 'five'
        atm.five = atm.five + val[1]
        balance += val[1]*5
      when 'ten'
        atm.ten = atm.ten + val[1]
        balance += val[1]*10
      when 'twenty_five'
        atm.twenty_five = atm.twenty_five + val[1]
        balance += val[1]*25
      when 'fifty'
        atm.fifty = atm.fifty + val[1]
        balance += val[1]*50
      end 
    end
    atm.balance = atm.balance + balance
    atm.save!
  end

  private

  def check_field(field, value, atm)
    if @divided_amount / value > 0 && field >= (@divided_amount / value)
      minus = ((@divided_amount / value) * value)
      field = field - (@divided_amount / value)
      atm.balance = atm.balance - minus
      @divided_amount = @divided_amount - minus
    end
  end
end
