class BankAccount
  attr_reader :balance, :status
  attr_accessor :name

  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit (money)
    @balance += money
  end

  def display_balance
    @balance
  end

  def valid?
    return true if @status == "open" && @balance > 0
    false
  end

  def close_account
    @status = "closed"
  end

end
