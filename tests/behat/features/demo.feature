@demo_bundle
Feature: Demo Bundle
When I login to a Web Express website
As an authenticated user 
I should be able to view node and block configuration, but not save

Scenario: Someone trying to login should see "Web Express Demo Mode" banner
When I am on "user"
Then I should see "Web Express Demo Mode"
And I should see the link "Log in to see how this site was built"
And I should see the link "Web Express Tutorials on Web Central"

