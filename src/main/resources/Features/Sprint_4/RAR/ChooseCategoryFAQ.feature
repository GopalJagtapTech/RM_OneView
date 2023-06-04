Feature: RAR Choose A Category
@run
  Scenario Outline: nn
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Top-Up" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category
  
    And verify FAQs
    |How will a part-payment get adjusted towards my Gold Loan?|
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu         |
      | 8800384932    | 02021976 | Individual    | Help and support |

  ####################Mustaq #######################
  @run
# CHOOSE CAT
  Scenario: Verify Choose a Category Contents
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Help and support"
    And verify User is redirected to Request History Page
    And verify the Categories present
      | Loans#Raise your loan-related queries here                                             |
      | Deposits#Raise your queries regarding deposits here                                    |
      | Insurance#Raise your insurance-related queries here                                    |
      | Cards#Raise your queries regarding cards here                                          |
      | Loan Payments/Withdrawals#Raise queries here regarding EMI payments, withdrawals etc.  |
      | Profile details#Update Mobile no., Email id, Residential address etc.                  |
      | UPI#Raise your queries regarding UPI payments here                                     |
      | Wallets#Raise concerns regarding your wallet here                                      |
      | Utility and Bill Payments#Raise your queries regarding utility and bill payments here  |
      | Rewards#Bajaj coins, Cashback, Vouchers & more                                         |
      | Others#Raise queries regarding Profile Details, mandate, CIBIL, KYC, rewards and more. |

# Reference
  Scenario Outline: nn
    Given User is logged in "<Mobile Number>" "<Date>" for "<Customer Type>"
    When User lands on Home Page
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "<SubMenu>"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Top-Up" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category

    And verify FAQs
      | How will a part-payment get adjusted towards my Gold Loan? |
    Examples:
      | Mobile Number | Date     | Customer Type | SubMenu          |
      | 8800384932    | 02021976 | Individual    | Help and support |

    # FAQs
  Scenario:Loan- Gold Loan- Part Payment- Redirection
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Help and support"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Part-Payment" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category

  Scenario:Loan- Gold Loan-Part Payment- FAQs
    And verify FAQs
      | How will a part-payment get adjusted towards my Gold Loan? |

  Scenario:Loan- Gold Loan- Auction Notices- Redirection
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Help and support"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Auction Notices" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category

  Scenario:Loan- Gold Loan- Auction Notices- FAQs
    And verify FAQs
      | What do you mean by 'Demand Notice 1' and when is it issued? |
      | What is Demand Notice 2 and when does it get issued? |

  Scenario:Loan- Gold Loan- Interest Payment- Redirection
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Help and support"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Interest Payment" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category

  Scenario:Loan- Gold Loan- Interest Payment- FAQs
    And verify FAQs
      | How do I find out the next interest payment date of my Gold Loan? |
      | What is the maturity date of my Gold Loan? |

  Scenario:Loan- Gold Loan- Renewal- Redirection
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Help and support"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Renewal" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category

  Scenario:Loan- Gold Loan- Renewal- FAQs
    And verify FAQs
      | I want to renew my Gold Loan. Are there any charges? |

  Scenario:Loan- Gold Loan- Top-Up- Redirection
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Help and support"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Top-Up" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category

  Scenario:Loan- Gold Loan- Top-Up- FAQs
    And verify FAQs
      | What is a top-up loan on an existing Gold Loan and what is the fee to avail this service? |
      | How do I apply for a Top-Up on my Gold Loan? |
      | When will I get my top-up Gold Loan amount? |

  Scenario:Loan- Gold Loan- Others- Redirection
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Help and support"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Gold Loan" Relation in Category Page
    And Clicks on "Top-Up" query in "Gold Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category

  Scenario:Loan- Gold Loan- Others- FAQs
    And verify FAQs
      | Do I need to provide an invoice to prove that the gold belongs to me? |
      | How do I update my mobile number or e-mail id? |

#Business Loan

  Scenario:Loan- Business Loan- Part Pre-payment- Redirection
    And Clicks on Hamburger Menu
    And Selects an SubMenu from Hamburger "Help and support"
    And verify User is redirected to Request History Page
    And Choose "Loans" in Category
    Then verify user Redirected to "Loans" Category Page
    And Clicks on "Business Loan" Relation in Category Page
    And Clicks on "Top-Up" query in "Business Loan" Relation
    And verify User is Redirected to FAQs Page in RAR Choose A Category

  Scenario:Loan- Business Loan- Part Pre-payment- FAQs
    And verify FAQs
      | Will my EMI amount change after making a part-payment? |
      | Are there any charges applicable for making a part-prepayment towards my loan? |
      | How do I make a part-prepayment towards my loan? |
      | Are there any charges applicable for making a part-prepayment towards my loan? |
      | Are there any charges applicable for making a part-prepayment towards my loan? |
      | Are there any charges applicable for making a part-prepayment towards my loan? |
      | Are there any charges applicable for making a part-prepayment towards my loan? |
      | Are there any charges applicable for making a part-prepayment towards my loan? |

