class DashboardController < ApplicationController  
  
  def index
    if user_signed_in?
      # @transactions = current_user.transactions.all
      @base_balance = current_user.base_balance
      @total_transfers = current_user.total_transfers
      @balance_plan = current_user.balance_plan(@base_balance || 0, @total_transfers || 0)
    else
      @transactions = Transactions.all
    end
  end

end
