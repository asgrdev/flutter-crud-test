Feature: customer_form_page
   Scenario:customers form is presented
      Given the app is running
      Then I See {'Name'} text
      And I See {'Family'} text
      And I See {'BirthDate'} text
      And I See {'PhoneNumber'} text
      And I See {'Email'} text
      And I See {'BankAccountNumber'} text
      And I See {'Save'} button


   Scenario: add a new customer
      Given the custimer with credentials {'alex'} {'mockfamily'} {'1995/08/23'} {'alexmock@gmail.com'} {'09001234567'} {'61656516151651'} doesn't exist
      And the app is running
      When I enter {'alex'} into {0} text field
      And I enter {'mockfamily'} into {1} text field
      And I enter {'1995/08/23'} into {2} text field
      And I enter {'09001234567'} into {3} text field
      And I enter {'alexmock@gmail.com'} into {4} text field
      And I enter {'61656516151651'} into {5} text field
      And I tap {'save'} button and wait
      Then I see {'Success'} text 

     Scenario: update a new customer
      Given the custimer with credentials {'alex'} {'mockfamily'} {'1995/08/23'} {'alexmock@gmail.com'} {'09001234567'} {'61656516151651'}  exist
      And the app is running
      When I enter {'lary'} into {0} text field
      And I enter {'mockfamily'} into {1} text field
      And I enter {'1995/08/24'} into {2} text field
      And I enter {'09001230067'} into {3} text field
      And I enter {'alexmock@gmail.com'} into {4} text field
      And I enter {'61656516151651'} into {5} text field
      And I tap {'save'} button and wait
      Then I see {'Success'} text    