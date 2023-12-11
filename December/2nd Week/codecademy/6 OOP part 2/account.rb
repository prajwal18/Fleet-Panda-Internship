class Account
  attr_reader :name, :balance

  def initialize(name, balance)
    @name = name
    @blance = balance
  end

  private

  def pin
    @pin = 12_345
  end

  def pin_error
    'Access denied: incorrect PIN.'
  end

  public

  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == @pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}"
    else
      puts pin_error
    end
  end

end


checking_account = Account.new("Prajwal", 2000)