Feature: Free CRM Create Contacts

#with examples keyword 
Scenario Outline: Free CRM Create a new contact scenario

Given user is already on Login Page
When title of login page is Free CRM 
Then user enters "<username>" and "<password>"
Then user clicks on login button 
Then user is on home page
Then user moves to create contact page
Then user enters contact details "<firstname>" and "<lastname>" and "<position>"
Then close the browser

Examples:

	| username | password | firstname | lastname | position |
	| world  | test@1234 | Tom       | Peter    | Manager  |
	| world  | test@1234 | David     | Dsouza   | Director  |
