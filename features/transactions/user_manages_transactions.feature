Feature: User manages transactions

	So that a user track transactions
	As an user
	I want to add and delete transactions

	Scenario: User can create transactions
		Given I am signed in as admin "jason@example.com/password"
		When I go to the transactions page
		Then I should be on the transactions page
		
		When I follow "New Transaction"
		And I fill in "Name" with "Cable"
		And I fill in "Amount" with "24.99"
		And I fill in "Start date" with "02/02/2011"
		And I select "Weekly" from "Frequency"
		And I select "Expense" from "Transaction Type"

		And I press "Create New Transaction"
		Then I should see "Cable"