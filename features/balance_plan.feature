Feature: balance plan

	So that a user can plan their finances
	As an user
	I want to see my balance plan

	Background:
		Given I am signed in as a user "jason@example.com/password"
		And I have "320.55" as my Base balance
	
	Scenario: User's should see a balance plan when they have no transactions
		When I go to the dashboard
		Then the balance plan should have "320.55" "30" days from now
		And the balance plan should have "320.55" "60" days from now
		And the balance plan should have "320.55" "90" days from now

	Scenario: User's should see a transactions reflected in their balance plan
		And I have a transaction of "10.50" of "Expense" with frequency "once_per_week" starting "2" days from now
		And I have a transaction of "1.00" of "Expense" with frequency "once_per_day" starting "3" days from now
		When I go to the dashboard
		Then the balance plan should have "305.05" "7" days from now
		And the balance plan should have "287.55" "14" days from now
		And the balance plan should have "270.05" "21" days from now
		
	Scenario: User's should see a income transactions increase their balance plan
		And I have a transaction of "10.00" of "Income" with frequency "once_per_week" starting "2" days from now
		When I go to the dashboard
		Then the balance plan should have "330.55" "7" days from now
		And the balance plan should have "340.55" "14" days from now
		And the balance plan should have "350.55" "21" days from now