@Register
Feature: Register
  I want to register on Mile.app

  Scenario Outline: Register by Input Valid Full name, Email, Phone, and Organization name
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Response body POST is non-empty

    Examples: 
      | full_name                  | email                        | phone        | organization_name | response_code |
      | Software Quality Assurance | qualityassurance@example.com | 081234560000 | Mile              |           200 |

  Scenario Outline: Register by Input Valid Long Full name, Email, Phone, and Organization name
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Warning notification appeared <notification>

    Examples: 
      | full_name                           | email                        | phone        | organization_name | response_code | notification       |
      | Software Quality Assurance Software | qualityassurance@example.com | 081234560000 | Mile              |           406 | Full name too long |

  Scenario Outline: Register by Input Valid Full name, Email (username with dot), Phone, and Organization name
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Response body POST is non-empty

    Examples: 
      | full_name                  | email                         | phone        | organization_name | response_code |
      | Software Quality Assurance | quality.assurance@example.com | 081234560000 | Mile              |           200 |

  Scenario Outline: Register by Input Valid Full name, Email, Phone (628xxx), and Organization name
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Response body POST is non-empty

    Examples: 
      | full_name         | email                        | phone          | organization_name | response_code |
      | Quality Assurance | qualityassurance@example.com | 62881234560000 | Mile              |           200 |

  Scenario Outline: Register by Input Valid Full name, Email, Phone (+628xxx), and Organization name
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Warning notification appeared <notification>

    Examples: 
      | full_name         | email                        | phone           | organization_name | response_code | notification                |
      | Quality Assurance | qualityassurance@example.com | +62881234560000 | Mile              |           406 | Please fill phone correctly |

  Scenario Outline: Register by Input Valid Full name, Email, Phone (special character), and Organization name
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Warning notification appeared <notification>

    Examples: 
      | full_name         | email                        | phone        | organization_name | response_code | notification                |
      | Quality Assurance | qualityassurance@example.com | !@#$%^&*()_+ | Mile              |           406 | Please fill phone correctly |

  Scenario Outline: Register by Input Valid Full name, Email, Phone (character), and Organization name
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Warning notification appeared <notification>

    Examples: 
      | full_name         | email                        | phone               | organization_name | response_code | notification                |
      | Quality Assurance | qualityassurance@example.com | qwertyuioplkjhgfdsa | Mile              |           406 | Please fill phone correctly |

  Scenario Outline: Register by Input Valid Full name, Email, Phone (less than 9 digits), and Organization name
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Warning notification appeared <notification>

    Examples: 
      | full_name         | email                        | phone    | organization_name | response_code | notification                |
      | Quality Assurance | qualityassurance@example.com | 08123456 | Mile              |           400 | Please fill phone correctly |

  Scenario Outline: Register by Input Valid Full name, Email, Phone (more than 14 digits), and Organization name
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Warning notification appeared <notification>

    Examples: 
      | full_name         | email                        | phone           | organization_name | response_code | notification                |
      | Quality Assurance | qualityassurance@example.com | 081234567890123 | Mile              |           400 | Please fill phone correctly |

  Scenario Outline: Register by Input Valid Full name, Email, Phone, and Long Organization name (more than 50 characters)
    Given I set POST posts api endpoint
    When Set request body
    And I input full name <full_name>
    And I input email <email>
    And I input phone <phone>
    And I input organization name <organization_name>
    And Send POST HTTP request
    Then I receive valid HTTP response code <response_code>
    And Warning notification appeared <notification>

    Examples: 
      | full_name         | email                        | phone           | organization_name                                      | response_code | notification               |
      | Quality Assurance | qualityassurance@example.com | 081234567890123 | Mile Mile Mile Mile Mile Mile Mile Mile Mile Mile Mile |           400 | Organization name too long |
