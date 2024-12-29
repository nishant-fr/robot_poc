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
   robot --outputdir Results Tests/LoginPageTest.robot
   ```
