# robot_poc


Open Command Line as an Administrator

install python from below link
https://www.python.org/downloads/

add python.exe to PATH env variable

check python version by using following 
python -V

check python3 is properly installed
python3 -V

check pip version by using following 
pip --version

check pip version by using following 
pip3 --version

install robot framework using following 

pip3 install robotframework

check if installation is proper using following

robot --version or python -m robot --version

install selenium library using following 

pip3 install robotframework-seleniumlibrary

check if installation is properly complete using following

pip list | grep robotframework-seleniumlibrary

download and install PyCharm from the following link 

https://www.jetbrains.com/pycharm/

Once downloaded, add the following Plugin in the IDE

IntelliBot @ SeleniumLibrary Patched

download chrome driver and firefox driver from following links / other drivers can be downloaded from selenium https://www.selenium.dev/downloads/

https://developer.chrome.com/docs/chromedriver/#latest_chromedriver_binaries

https://github.com/mozilla/geckodriver/releases

Extract both files and put the drivers in a folder like following :

- c:/browser drivers/
                    - chromedriver.exe
                    - geckodriver.exe

add above folder into your PATH environment variable

Refer to the below link for Selenium Library dowumentation

https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html


#Test Execution

To run the test, use the following command

robot --outputdir Results Tests/LoginPage.robot














