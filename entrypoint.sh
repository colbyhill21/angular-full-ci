#!/bin/sh

testcommand="$INPUT_TESTCOMMAND"
mocha="$INPUT_MOCHA"
working_dir="$INPUT_WORKING_DIRECTORY"

if [ -n "$working_dir" ]; then
    cd $working_dir
fi

echo "\n**Auditing Packages**\n"
npm audit

echo "\n**Installing Angular CLI**\n"
npm install -g @angular/cli --latest
ng config -g cli.warnings.versionMismatch false

if [ "$mocha" = "true" ]; then
    npm i mocha
fi

echo "\n**Linting Code**\n"
ng lint

echo "\n**Installing Dependencies**\n"
npm install

echo "\n**Building Project**\n"
ng build --prod

echo "\n**Running Unit Tests**\n"
npm $testcommand
