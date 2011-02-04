Feature: User manages transactions

	So that a user track transactions
	As an user
	I want to add and delete transactions

	Background:
		Given I am signed in as a user "jason@example.com/password"
		When I go to the transactions page

	Scenario: User can create expense transactions		
		And I follow "New Transaction"
		And I fill in "Name" with "Cable"
		And I fill in "Amount" with "24.99"
		And I fill in "Start date" with "02/02/2011"
		And I select "Weekly" from "Frequency"
		And I select "Expense" from "Transaction Type"
		And I press "Create New Transaction"
		Then I should be on the transactions page
		And I should see "Cable"
		And I should see "-24.99"

	Scenario: User can create Income transactions	
		And I follow "New Transaction"
		And I fill in "Name" with "Cable"
		And I fill in "Amount" with "24.99"
		And I fill in "Start date" with "02/02/2011"
		And I select "Weekly" from "Frequency"
		And I select "Income" from "Transaction Type"
		And I press "Create New Transaction"
		Then I should be on the transactions page
		And I should see "Cable"
		And I should see "24.99"
		And I should not see "-24.99"
		
	Scenario: User can update transactions	
		Given I have a transaction of "10.00" of "Income" with frequency "once_per_week" starting "2" days from now
		When I go to the transactions page
		And I follow "Show"
		And I follow "Edit"		
		And I fill in "Amount" with "9.00"
		And I press "Create New Transaction"
		And I go to the transactions page
		Then I should see "9.0"
		
	