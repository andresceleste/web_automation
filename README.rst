Web Testing with Robot Framework and Selenium
=============================================

This project demonstrates how to perform web testing using `Robot Framework` in combination with `SeleniumLibrary` for
browser automation.

Overview
========
Robot Framework is a generic open-source automation framework for acceptance testing, acceptance test-driven development
(ATDD), and robotic process automation (RPA). It utilizes keyword-driven testing approach and can be extended with
libraries implemented using Python or Java.

Getting Started
===============
Prerequisites
-------------

* Python (version 3.x recommended)
* pip (Python package installer)
* Chrome or Firefox browser installed

Installation
------------

1. Clone this repository
::
   git clone https://github.com/andresceleste/web_automation.git

2. Navigate to the project directory
::
    cd path/to/project/directory

3. Create a virtual environment (optional but recommended)
::
    python -m venv venv

4. Activate the virtual environment
    * On Windows:
      ::
          venv\Scripts\activate

    * On macOS and Linux:
      ::
          source venv/bin/activate

5. Install the required dependencies:
::
    pip install -r requirements.txt


Test cases
==========

Test case files as well as a resource file used by them are located in the ``login_tests`` directory. Click file names
below to
see the latest versions online.

`valid_login.robot`_
A test suite with a single test for valid login.

    This test has a workflow that is created using keywords in the imported resource file.

`invalid_login.robot`_
A test suite containing tests related to invalid login.

    These tests are data-driven by their nature. They use a single keyword, specified with the ``Test Template``
    setting, that is called with different arguments to cover different scenarios.

    This suite also demonstrates using setups and teardowns in different levels.

Running Tests
-------------

This command will execute all test cases located in the tests/ directory.
::
    robot -d ./results tests/

Generated results
-----------------

After `running tests`_ you will get report and log in HTML format. Example files are also visible online in case you are
not interested in running the tests yourself:

- `report.html`_
- `log.html`_

Project Structure
=================
The project follows a typical structure for Robot Framework projects:

* tests/: Contains test suites and test cases written in Robot Framework syntax.
* `resource.robot`_: Contains reusable resources such as libraries, variables, keywords, and test data.
* results/: Stores test execution results including logs, reports, and screenshots.

Contributing
------------
Contributions are welcome! Feel free to open issues or pull requests for any improvements or features you'd like to see
in this project



