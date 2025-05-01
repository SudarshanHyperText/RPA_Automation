
Watchtronics - RPA Automation Framework

This is an RPA automation testing framework built using Robot Framework for testing the custom eCommerce site: Watchtronics. The structure is modular, scalable, and follows best practices for UI automation testing.



Folder Structure:
RPA_AUTOMATION/
├── chromedriver-win64/          # ChromeDriver for browser automation
├── keywords/                    # Reusable keywords (common actions)
├── Locators/                    # Locator files for UI elements
├── page_objects/                # Page Object Model: keywords for specific pages
├── results/                     # Output logs and reports
├── scripts/                     # Entry point test scripts
├── test/                        # Robot test case files
├── test_data/                   # Search terms or test data used in tests
├── resources/                   # Env config, credentials, etc.
└── robot/                       # Base Robot files (if needed)


Core Files Overview

resources/
- credentials.robot: Stores sensitive data.
- env_config.robot: Stores URLs, environment flags, etc.
- common_keywords.robot: Reusable cross-page actions.

Locators/
- home_page_locators.robot: Locators for Home Page.
- product_page_locators.robot: Locators for Product Page (supports dynamic locators like radio buttons).

 page_objects/
- Implements Page Object Model:
  - home_page.robot
  - product_page.robot
- Keywords like `Click Shop Now, Search For Product, etc.

test/
- home_page_test.robot: Verifies home page functionalities.
- product_page_test.robot: Handles product searches with variables like ${Search_Term_boat}.


Test Execution

To run tests:
Open Terminal and Type:
robot test/product_page_test.robot


Generated Reports:
- log.html
- report.html
- output.xml

Highlights

- Built from scratch on a custom-built eCommerce site (Watchtronics).
- Modular Robot Framework structure.
- Reusability via keywords and dynamic locator support.
- Supports parameterized tests (e.g. brand-based product search).

Author's Note:

This framework is designed for learning and real-world automation. Ideal for demonstrating automation design patterns using Robot Framework.


