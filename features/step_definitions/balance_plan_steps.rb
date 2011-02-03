Given /^I have "([^"]*)" as my Base balance$/ do |base_balance|
  User.last.update_attribute(:base_balance, base_balance)
end

Given /^I have a transaction of "([^"]*)" of "([^"]*)" with frequency "([^"]*)" starting "([^"]*)" days from now$/ do |amount, type, freq, days_out|
  start_date = days_out.to_i.days.from_now
  Factory(type.downcase.to_sym,
    :user => User.last,
    :amount => amount,
    :frequency => freq,
    :start_date => start_date
  )
end

Then /^the balance plan should have "([^"]*)" "([^"]*)" days from now$/ do |projected_balance, days_out|
  user = User.last
  base_balance = user.base_balance
  total_transfers = user.total_transfers
  date = days_out.to_i.days.from_now.to_date
  plan = user.balance_plan(base_balance, total_transfers)
  plan[date].to_f.should == projected_balance.to_f
end
