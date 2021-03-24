class Atm < ApplicationRecord
  def withdrawal(amount)
    
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
end
