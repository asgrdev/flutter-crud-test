Feature: customer_list_page
   Scenario: customers list is presented
      Given the app is running
      Then I see {'customerslist'} listview
      And I see {'add new custimer'} button


 Scenario: delete user from customers list
      Given the app is running
      Then I see {'customerslist'} listview
      And I see {'customer.id'}  item
       And I see {'icon.delete'} button
      When I tap {'icon.delete'} button and wait
      Then Item {'customer.id'} deleted

 Scenario: Edit customer data 
      Given the app is running
      Then I see {'customerslist'} listview
      And I see {'customer.id'}  item
       And I see {'icon.edit'} button
       When I tap {'icon.edit'} button and wait
       Then I see {'customer'} data in customer form page

       