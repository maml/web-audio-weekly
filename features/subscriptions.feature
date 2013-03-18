Feature: Subscribe
	In order to build a list of newsletter recipients
	A visitor
	Should be able to enter their email address

	Scenario: Success 
		Given I am on the landing page
		And I fill in "subscription_email" with "ml@gmail.com"
		And I fill in "subscription_email_confirmation" with "ml@gmail.com"
		When I press "Subscribe"
		Then I should see "Thanks for signing up!"

  Scenario: Failure - email confirmation does not match email
	  Given I am on the landing page
		And I fill in "subscription_email" with "ml@gmail.com"
		And I fill in "subscription_email_confirmation" with "ke@gmail.com"
		When I press "Subscribe"
		Then I should see "Email doesn't match confirmation"

