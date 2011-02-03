class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :transactions
  

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :base_balance

  def balance_plan(base_balance, total_transfers = {})
    day_before_balance = base_balance
    years_balances = {}
    today = Date.today
    0.upto(364) do |u|
      date = today + u.days
      years_balances[date] = day_before_balance + (total_transfers[date] || 0)
      day_before_balance = years_balances[date]
    end
    
    years_balances
  end

  def total_transfers
    total_cash_stream = {}
    @user_transactions = transactions.find(:all)
    @user_transactions.each do |transaction|
      transaction.to_hash.each_pair do |k,v|
        total_cash_stream[k] ||= 0
        total_cash_stream[k] += v
      end
    end
    total_cash_stream
  end

  def to_s
    email
  end
  
end
