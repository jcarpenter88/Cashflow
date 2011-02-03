Given /^I am signed in as a user "([^"]*)\/([^"]*)"$/ do |email, password|
  Factory(:user, :email => email, :password => password)

  When %{I sign in as "#{email}/#{password}"}
end

Given /^I am signed in as admin "([^"]*)\/([^"]*)"$/ do |email, password|
  Factory(:admin, :email => email, :password => password)

  When %{I sign in as "#{email}/#{password}"}
end

When /^I sign in as "([^"]*)\/([^"]*)"$/ do |email, password|
  When %{I go to the new user session page}
   And %{I fill in "Email" with "#{email}"}
   And %{I fill in "Password" with "#{password}"}
   And %{I press "Sign in"}
end


Then /^the status should be (\d+)$/ do |status|
  last_response.status.should == status.to_i
end