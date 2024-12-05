Feature: Credit Card Application

Scenario: Submit a valid credit card application
  Given the user has valid personal, income, and contact information
  When the user submits a POST request to "/api/creditcard/apply" with the valid information
  Then the response status code should be 200
  And the response body should contain "Application submitted successfully"

Scenario: Submit an invalid credit card application
  Given the user has invalid or incomplete information
  When the user submits a POST request to "/api/creditcard/apply" with the invalid information
  Then the response status code should be 400
  And the response body should contain "Error: Invalid or missing information"
