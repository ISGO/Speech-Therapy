#2
Feature: new client file
	In order to create a new clien file
	As a therapist
	I want to  create a client file
 
  Scenario: create a client file
	Given I have entered the client details
	When I press "create"
	Then I should see client in the clients list 