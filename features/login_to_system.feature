#1
Feature: login 
	In order to login to the platform
	As a client or therapist
	I want to see my user page

  Scenario: login to platform
	Given I entered my user_name and password   
	And I press "login"
	Then I should see my profile page