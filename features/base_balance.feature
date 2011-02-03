Feature: Base balance

	So a user can adjust their starting balance
	As a user
	I want to modify my balance
	
	Scenario: Modify starting balance
		Given I am signed in as a user "jason@example.com/password"
		When I go to the dashboard
		Then I should see "Base balance"
		
		When I fill in "Base balance" with "100.77"
		And I press "Update Base Balance"
		Then I should see "100.77"