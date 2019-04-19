#!/bin/bash


echo "<<--------- Installing and unpacking gecko driver ------->>"
curl -L https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-macos.tar.gz | tar xz
echo "<<--------- Installing and unpacking gecko driver Done ------->>"

echo "<<----- Installing webdriver io ------>>"
yarn add webdriverio
echo "<<------ Webdriver io installed ------>>"