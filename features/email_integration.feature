Feature: Email Integration
 As a customer
 I want to contact a company by email from my inbox
 In order to have my compliants head

 Background: Company sends email to a customer
  Scenario: Successful email
   Given I am on a Messages page
   When I click on send email message
   And Fill the "to" with "da2nana@gmail.com" and "message" with "Hello"
   Then I should see "Message sent to da2nana@gmail.com successfully"
  
  Scenario: No email address provided
   Given I am on a Messages page
   When I click on send email message
   And Fill the "to" with " " and "message" with "Hello"
   Then I should see "No email provided, message not sent"

  Scenario: No message provided
   Given I am on a Messages page
   When I click on send email message
   And Fill the "to" with "da2nana@gmail.com" and "message" with " "
   Then I should see "No message provided, message not sent"

 Background: Company sends email to a group of customers
  Scenario: Successful message sent to a group
   Given I am on a Messages page
   When I click on send email message
   And Fill the "to" with "da2nana@gmail.com, david.osei@meltwater.org" and "message" with "hello"
   Then I should see "Message sent to [da2nana@gmail.com, david.osei@meltwater.org] successfully"
  
 Background: Company receives an email from a customer
   Scenario: Company receives an email
   Given I am on a Message page
   Then I should see "1 Message received from email"
   
 
