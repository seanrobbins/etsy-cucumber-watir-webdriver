Feature:
In order to show the advance cart functionality
As a user
I want to search for an item in a sub category

Scenario: Advanced Search for a hat

Given I am searching on Etsy.com
When I specify the Knitting sub category
And I search for hat
Then there are search results for hat

Scenario: Advanced Search for a ring

Given I am searching on Etsy.com
When I specify the Jewelry sub category
And I search for ring
Then there are search results for ring


