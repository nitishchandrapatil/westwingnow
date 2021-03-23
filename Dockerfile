FROM ubuntu

#update the image
RUN apt-get update

#install python
RUN apt-get install -y python3.7
RUN apt-get install -y python3-pip

#install robotframework and seleniumlibrary
RUN pip3 install robotframework
RUN pip3 install robotframework-seleniumlibrary

#The followig are needed for Chrome and Chromedriver installation
RUN apt-get install -y xvfb 
RUN apt-get install -y zip 
RUN apt-get install -y wget 
RUN apt-get install ca-certificates 
#RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.28.0/geckodriver-v0.28.0-linux64.tar.gz
#RUN tar -x geckodriver -zf geckodriver-v0.28.0-linux64.tar.gz -O > /usr/bin/geckodriver
#RUN chmod +x /usr/bin/geckodriver
#RUN rm geckodriver-v0.28.0-linux64.tar.gz
RUN  apt-get install -y libnss3-dev libasound2 libxss1 libappindicator3-1 libindicator7 gconf-service libgconf-2-4 libpango1.0-0 xdg-utils fonts-liberation
RUN  wget https://chromedriver.storage.googleapis.com/2.29/chromedriver_linux64.zip
RUN  unzip chromedriver_linux64.zip
RUN  chmod +x chromedriver
RUN  mv chromedriver /usr/bin/
RUN  rm chromedriver_linux64.zip


#Robot Specific
RUN mkdir /robot
RUN mkdir /results
ENTRYPOINT  ["robot"]
