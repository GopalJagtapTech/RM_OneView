Feature: Home-Footer

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" in Application Forms
    When Clicks on the "<Option>" option type in Application Forms
    Then Verify Customer Redirected to "<URL>" Url

    Examples:
      | Option                             | URL                                        |
      | Personal Loan                      | personal-loan                              |
      | Business Loan                      | business-loan-form                         |
      | Home Loan                          | home-loan-form                             |
      | Gold Loan                          | gold-loan-application-form                 |
      | Bajaj Finserv RBL Bank SuperCard   | apply-for-credit-card-online               |
      | Bajaj Finserv DBS Bank credit card | apply-for-dbs-credit-card-online           |
      | EMI Network Card                   | insta-emi-card                             |
      | Wallet Care                        | marketplace/pocketInsurance/               |
      | Health Insurance                   | marketplace/insurance/health-insurance                           |
      | Loan for Doctors                   | apply-for-doctor-loan                      |
      | Fixed Deposit                      | MyAccountCustomer/Home/Index               |
      | Loan Against Property              | loan-against-property-application-form     |
      | Loan for Chartered Accountants     | chartered-accountant-loan-application-form |
      | Online Trading                     | MyAccountCustomer/Home/Index               |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" - Middle Section
    When Clicks on the "<Option>" option type
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option                                      | URL                                                 |
      | Personal Loan                               | personal-loan                                       |
      | Business Loan                               | business-loan                                       |
      | Home Loan                                   | home-loan                                           |
      | Gold Loan                                   | gold-loan                                           |
      | MSME Loan                                   | sme-msme-loan                                       |
      | Mortgage Loan                               | mortgage-loan                                       |
      | Loan Against Property                       | loan-against-property                               |
      | Two & Three Wheeler Loan                    | two-wheeler-loan                                    |
      | Education Loan on Property                  | education-loan-on-property                          |
      | Personal Loan for Self Employed Individuals | personal-loan-for-self-employed                     |
      | Two-wheeler Loan                            | two-wheeler-loan                                    |

      | Health Insurance                            | insurance/health-insurance-all-products             |
      | Car Insuarnce                               | insurance/car-insurance-all-products                |
      | Two Wheeler Insurance                       | insurance/two-wheeler-insurance-all-products        |
      | Pocket Insurance                            | insurance/pocket-insurance-all-products             |
      | Investment Plans                            | insurance/investment-plans-all-products             |
      | Appliances Extended Warranty                | insurance/appliances-extended-warranty-all-products |
      | Pocket Subscription                         | insurance/pocket-subscription-all-products          |

      | Loan for Doctors                            | doctor-loan                                         |
      | Chartered Accountant Loan                   | chartered-accountant-loan                           |
      | Fixed Deposit                               | fixed-deposit                                       |
      | Demat Account                               | open-demat-trading-account-online                   |
      | Systematic Deposit Plan                     | investments/systematic-deposit-plan                 |
      | Mutual Funds                                | mutual-funds                                        |
#      | Covid-19 Insurance                          | covid-19-protection-cover                           |
      | Mobile Protection Plan                      | insurance/mobile-screen-insurance                   |
      | Wallet Care                                 | insurance/wallet-care                               |
      | Wallet                                      | e-wallet-payment                                    |
      | Bajaj Finserv RBL Bank SuperCard            | credit-card                                         |
      | Bajaj Finserv DBS Bank credit card          | dbs-bank-credit-card                                |
      | EMI Network Card                            | insta-emi-network-card-apply-online                 |
      | Health EMI Network Card                     | health-emi-network-card                             |
      | CIBIL Score                                 | check-free-cibil-score                              |
      | Extended Warranty                           | extended-warranty-journey                           |
      | Pre-approved offers                         | pre-approved-loan-offers                            |
      | Offers & Promotions                         | offers-and-promotions                               |
      | Bills & Recharges                           | bbps-bills-and-payments/login.html                  |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>" - Middle Section - New Tabs
    When Clicks on the "<Option>" option type
    Then Verify Customer Redirected to respective "<Url>"
    Examples:
      | Option          | Url                                                     |
      | Smartphones     | https://www.bajajmall.in/emi-store/smartphones.html     |
      | Mattress        | https://www.bajajmall.in/emi-store/mattress.html        |
      | Smartwatches    | https://www.bajajmall.in/emi-store/smart-watches.html   |
      | Cycles          | https://www.bajajmall.in/emi-store/cycles.html          |
      | Music & Audio   | https://www.bajajmall.in/emi-store/music-and-audio.html |
      | Speakers        | https://www.bajajmall.in/emi-store/all-speakers.html    |
      | Water Purifiers | https://www.bajajmall.in/emi-store/water-purifier.html  |
      | Laptops         | https://www.bajajmall.in/emi-store/laptops.html         |


######Calculators
  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>"
    When Clicks on a Tab "Calculators" in Footer
    When Clicks on the "<Option>" option type in "Calculators"
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option                                | URL                                       |
      | Personal Loan EMI Calculator          | personal-loan-emi-calculator              |
      | Personal Loan Eligibility Calculator  | personal-loan-eligibility-calculator      |
      | Fixed Deposit Calculator              | fixed-deposit-calculators                 |
      | Gratuity Calculator                   | gratuity-calculator                       |
      | Home Loan EMI Calculator              | home-loan-emi-calculator                  |
      | Home Loan Foreclosure Calculator      | home-loan-foreclosure-calculator          |
      | Income Tax Calculator                 | income-tax-calculator                     |
      | Interest Calculator                   | interest-calculator                       |
      | Home Loan Eligibility Calculator      | home-loan-eligibility-calculator          |
      | Loan Against Property EMI Calculator  | loan-against-property-emi-calculator      |
      | Top-up Loan Calculator                | top-up-loan                               |
      | GST Calculator                        | gst-calculator                            |
      | Home Loan Balance Transfer Calculator | home-loan-balance-transfer-calculator     |
      | Education Loan on Property Calculator | education-loan-on-property-calculator     |
      | Part-prepayment Calculator            | home-loan-part-pre-payment-calculator     |
      | Gold Loan Calculator                  | gold-loan-calculator                      |
      | Business Loan EMI Calculator          | business-loan-emi-calculator              |
      | NRI Fixed Deposit Calculator          | nri-fixed-deposit-calculators             |
      | SDP Calculator                        | investments/systematic-deposit-calculator |
      | EMI Calculator                        | emi-calculator                            |

#####Legal

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>"
    When Clicks on a Tab "Legal" in Footer
    When Clicks on the "<Option>" option type in "Legal"
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option                         | URL                                                                   |
      | Moratorium Policy(Covid-19)    | covid_19_moratorium_policy_may20.pdf                                  |
      | Privacy Policy                 | privacy-policy                                                        |
      | Fair Practices Code            | investment-about-us-fair-practices-code                               |
      | Confidential Feedback          | confidential-feedback                                                 |
      | Moratorium Policy March 2020   | moratorium_bfl.pdf                                                    |
      | Phishing                       | phishing                                                              |
      | Interest Rate Policy           | interest-rate-model.pdf                                               |
      | Resolution Plan 2.0            | policy_on_resolution_framework_2.0-for_covid19_related_stressdocx.pdf |
      | Information Security Practices | infosec-pages                                                         |
      | Disclaimer                     | disclaimer-page                                                       |
      | Disclosures                    | disclosures-page                                                      |
      | Terms & Conditions             | terms-and-conditions                                                  |
      | Information Security Measures  | Information_Security_Measures.pdf                                     |
      | Forms Centre                   | forms-centre                                                          |
      | Cautionary Notice              | cautionary-notice-new.pdf                                             |
      | Resolution Plan 2.0 FAQs       | loan_restructuring_faqs_2021.pdf                                      |
      | Fees & Charges                 | all-fees-and-charges                                                  |
      | Whistle Blower Policy          | media/finance/downloads/whistle-blower-policy.pdf                     |
      | Ombudsman Scheme               | finance-corporate-ombudsman                                           |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>"
    When Clicks on a Tab "Legal" in Footer
    When Clicks on the "<Option>" option type in "Legal"
    Then Verify Customer Redirected to respective "<Url>"
    Examples:
      | Option           | Url                                                                                   |
      | Citizens Charter | https://cms-assets.bajajfinserv.in/is/content/bajajfinance/bfl-citizens-charter-v4pdf |

######Reach Us
  Scenario Outline: verify Customer is redirected to Respective page when clicked on particular "<Option>"
    When Clicks on a Tab "Reach Us" in Footer
    When Clicks on the "<Option>" option type in "Reach Us"
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option                     | URL                                            |
      | Contact us                 | reach-us                                       |
      | Raise A Request            | MyAccountService/Helpandsupport/LogRequest     |
      | Our Partners               | bajaj-finserv-partners                         |
      | Frequently asked questions | MyAccountService/HelpAndSupport/RARFAQCategory |
      | Branch Locator             | branch-locator                                 |
      | Galaxy - Partner Portal    | MyAccountCustomer/Home/Index                   |
      | Make Online Payment        | MyAccountPayments/LoanPay/ActiveLoanPay        |

######Reach Us Icons

  Scenario Outline: verify Customer is redirected to Respective page when clicked on Social App Icons in Reach Us
    When Clicks on a Tab "Reach Us" in Footer
    When clicks on "<Option>"
    Then Verify Customer Redirected to respective Social Media "<Url>"
    Examples:
      | Option        | Url                                                    |
      | Facebook Logo | https://www.facebook.com/bajajfinserv                  |
      | Linkedin Logo | https://www.linkedin.com/company/bajaj-finserv-lending |
      | Twitter Logo  | https://twitter.com/Bajaj_Finserv                      |
      | Youtube Logo  | https://www.youtube.com/c/bajajfinserv                 |

  ######Our Companies
  Scenario Outline: verify Customer is redirected to Respective page when clicked on Our Companies Options
    When Customer is able to view Our Companies section in footer
    When clicks on "<Option>" in Footer
    Then Verify Customer Redirected to respective "<Url>"
    Examples:
      | Option                          | Url                                    |
      | Bajaj Allianz Life Insurance    | https://www.bajajallianzlife.com/      |
      | Bajaj Finserv Markets           | https://www.bajajfinservmarkets.in/    |
      | Bajaj Housing Finance Ltd.      | https://www.bajajhousingfinance.in/    |
      | Bajaj Financial Securities Ltd. | https://www.bajajfinservsecurities.in/ |
      | Bajaj Finserv Health Ltd.       | https://www.bajajfinservhealth.in/     |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on Our Companies Options
    When Customer is able to view Our Companies section in footer
    When clicks on "<Option>" in Footer
    Then Verify Customer Redirected to "<URL>" Url
    Examples:
      | Option             | URL                     |
      | Bajaj Finserv Ltd. | corporate-bajaj-finserv |
      | Bajaj Finance Ltd. | corporate-bajaj-finance |

  Scenario Outline: verify Customer is redirected to Respective page when clicked on Our Companies Options
    When Customer is able to view Our Companies section in footer
    When clicks on "<Option>" in Footer
    Then Verify Customer Redirected to respective "<Url>" in same Tab
    Examples:
      | Option                          | Url                                                 |
      | Bajaj Allianz General Insurance | https://www.bajajallianz.com/general-insurance.html |

  Scenario:  verify Customer is able to view the Address Details present under Corporate Office
    Then Customer should be able to view Below address under Footer Section

  Scenario: verify Customer is able to view the Details under following Titles: Regd office
    Then Customer should be able to view the Details under following Titles:

  Scenario Outline: verify Customer is redirected to respective stores
    When clicks on "<Option>"
    Then Verify Customer Redirected to respective "<Url>"
    Examples:
      | Option       | Url                                        |
      | Android Logo | https://play.google.com/store/apps/details |
      | Apple Logo   | https://apps.apple.com/in/app              |

