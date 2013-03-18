Feature: Subscribe
	In order to build a list of newsletter recipients
	A visitor
	Should be able to enter their email address

	Scenario: Enters their email address
		Given I am on the landing page
		And I fill in "subscription_email" with "mloseke@gmail.com"
		And I fill in "subscription_email_confirmation" with "mloseke@gmail.com"
		When I press "Subscribe"
		Then the page should have the notice message "Thanks for signing up!"
