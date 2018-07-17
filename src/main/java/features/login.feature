Feature: Free CRM Login Feature 


#without examples keyword
#Scenario: Free CRM Login Test Scenario

#Given user is already on Login Page
#When title of login page is Free CRM 
#Then user enters "naveenk" and "test@123"
#Then user clicks on login button 
#Then user is on home page


#with examples keyword 
Scenario Outline: Free CRM Login Test Scenario

	Given user is already on Login Page 
	When title of login page is Free CRM 
	Then user enters "<username>" and "<password>" 
	Then user clicks on login button 
	Then user is on home page 
	Then close the browser 
	
	Examples: 
		| username | password |
		| world  | test@1234 |
		| tom	   | test444  |
		
		
		#Scenario: User is able to create a new contact
		#Given user is already on Home Page
		#When user mouse over on contacts link
		#Then user clicks on new contact link
		#Then user enters firstname and lastname
		#Then user clicks on save button
		#Then verify new contacts