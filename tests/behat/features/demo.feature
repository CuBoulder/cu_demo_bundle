@class_notes
Feature: Demo Bundle

When I login to a Web Express website
As an anonymous user 
I should be able to view node and block configuration, but not save


Scenario Outline: An authenticated user of any or no role
    Given  I am logged in as a user with the <role> role
    When I go to "node/add/class-note"
    Then I should see <message>

    Examples:
        | role            | message                  |
        | edit_my_content | "Access Denied"          |
        | edit_only       | "Access Denied"          |
        | content_editor  | "Create Class Note"      |
        | site_owner      | "Create Class Note"      |
        | administrator   | "Create Class Note"      |
        | developer       | "Create Class Note"      |

Scenario: An anonymous user should not be able to access the form for adding a class note
    When I am on "node/add/class-note"
    Then I should see "Access denied"
