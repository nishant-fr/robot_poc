# Robot Framework POC

## Prerequisites

### 1. Install Python
- Open Command Line as an Administrator.
- Download Python from the official website:  
  [Python Downloads](https://www.python.org/downloads/)
- Ensure `python.exe` is added to the **PATH** environment variable.

### 2. Verify Python Installation
- Check Python version:
  ```bash
  python -V
  ```
- Check if `python3` is properly installed:
  ```bash
  python3 -V
  ```

### 3. Verify pip Installation
- Check pip version:
  ```bash
  pip --version
  ```
- Check pip3 version:
  ```bash
  pip3 --version
  ```

---

## Install Robot Framework

1. Install Robot Framework using pip:
   ```bash
   pip3 install robotframework
   ```
2. Verify the installation:
   ```bash
   robot --version
   # OR
   python -m robot --version
   ```

---

## Install Selenium Library

1. Install the Selenium Library for Robot Framework:
   ```bash
   pip3 install robotframework-seleniumlibrary
   ```
2. Verify the installation:
   ```bash
   pip list | grep robotframework-seleniumlibrary
   ```

---

## Install PyCharm IDE

1. Download and install PyCharm:  
   [PyCharm Downloads](https://www.jetbrains.com/pycharm/)
2. Add the following plugin in PyCharm:
   - **IntelliBot @ SeleniumLibrary Patched**

---

## Download Web Drivers

1. Download Chrome and Firefox drivers:  
   - [ChromeDriver](https://developer.chrome.com/docs/chromedriver/#latest_chromedriver_binaries)  
   - [GeckoDriver](https://github.com/mozilla/geckodriver/releases)  
   - Other drivers can be downloaded from the [Selenium Downloads Page](https://www.selenium.dev/downloads/).
2. Extract the drivers and place them in a folder like:
   ```
   C:/browser drivers/
       ├── chromedriver.exe
       └── geckodriver.exe
   ```
3. Add the driver folder to your **PATH** environment variable.

---

## Selenium Library Documentation

Refer to the official documentation for Keywords and Locators:  
[SeleniumLibrary Documentation](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)

---

## Test Execution

1. To run the test, use the following command:
   ```bash
   robot --outputdir Results -v Tests/TestScripts/LoginPageTest.robot
   ```
# Allure Report Integration

To integrate Allure for reporting in your Robot Framework tests, follow the steps below:

## Step 1: Download Allure

1. Download the Allure release ZIP folder from the official [Allure Framework GitHub](https://github.com/allure-framework/allure2/releases).
2. Extract the ZIP folder to a directory of your choice.
3. Add the `bin` directory to your system's `PATH` environment variable to make the Allure commands accessible globally.

## Step 2: Install Allure Robot Framework Adapter

To install the Allure Robot Framework adapter, run the following command:

```bash
pip install allure-robotframework
```

## Step 3: Verify Installation

You can verify that the Allure Robot Framework adapter is installed correctly by running:

```bash
pip show allure-robotframework
```

This will show the package details if the installation is successful.

## Step 4: Restart IDE

After installation, restart your IDE to ensure that the changes are applied.

## Step 5: Verify Allure Installation

To verify that Allure is properly installed, run the following command:

```bash
allure --version
```

This will output the installed version of Allure.

## Step 6: Run Tests with Allure Listener

To run your tests and generate Allure reports, use the following command:

```bash
robot --listener allure_robotframework --outputdir Results Tests/TestScripts/LoginPageTest.robot
```

## Step 7: Generate the Allure Report

After running the tests, generate the Allure report with the following command:

```bash
allure generate output/allure
```

## Step 8: Open the Allure Report

Finally, to view the generated report, use:

```bash
allure open
```

---






