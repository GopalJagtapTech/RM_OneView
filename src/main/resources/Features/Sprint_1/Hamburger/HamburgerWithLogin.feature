
Feature: Hamburger with LogIN


################Hamburgers with Individual Login########

Scenario Outline: To verify validation message is displayed when customer does not have any overdues
Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
When User is on Home Page
And Clicks on Hamburger Menu
And Selects an SubMenu from Hamburger "<SubMenu>"
And Clicks on SubListmenu "<SubListMenu>"
Then Overdue page should be displayed "<Title>"

Examples:
| Mobile Number | Date     | Customer Type | SubMenu      | SubListMenu | Title                                                 |
| 9872159715    | 11111991 | Individual    | Loan payment | Overdue     | You do not have an overdue amount for any active Loan |


Scenario Outline: To verify validation message is displayed when customer clicks on Document Centre sub-menu when customer does not have any document
Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
When User is on Home Page
And Clicks on Hamburger Menu
And Selects an SubMenu from Hamburger "<SubMenu>"
And Clicks on SubListmenu "<SubListMenu>"
Then Document page should be displayed with "<Title>"

Examples:
| Mobile Number | Date     | Customer Type | SubMenu               | SubListMenu     | Title                                    |
| 9033270991    | 11111991 | Individual    | Mandate and documents | Document Center | You do not have any Active Loans with us |

