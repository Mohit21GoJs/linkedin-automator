#!/bin/bash

PrintPattern(){
    echo "<<<----- $1 ------->>>"
}

FormatInstalling(){
    installingText="Installing $1"
    installing=$(PrintPattern "$installingText")
    echo $installing
}

FormatInstalled(){
    installedText="Installed $1 successfully"
    installed=$(PrintPattern "$installedText")
    echo $installed
}

FormatInstalling "and unpacking geckodriver"
#curl -L https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-macos.tar.gz | tar xz
FormatInstalled "and unpacked geckodriver"

FormatInstalling "webdriver io"
# yarn add webdriverio
FormatInstalled "webdriver io"

FormatInstalling "Wdio"
yarn add -D @wdio/cli
FormatInstalled "Wdio"

PrintPattern "Setup wdio"
./node_modules/.bin/wdio config
PrintPattern "Wdio setup done"
