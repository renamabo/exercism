require 'pry'
module SavingsAccount

  def self.interest_rate(balance)
    if balance >= 5000
      2.475
    elsif balance >= 1000
      1.621
    elsif balance >= 0.0
      0.5
    elsif balance < 0.0
      -3.213
    end
  end
  
  def self.annual_balance_update(balance)
    (balance * SavingsAccount.interest_rate(balance))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise 'Please implement the SavingsAccount.years_before_desired_balance method'
  end
end