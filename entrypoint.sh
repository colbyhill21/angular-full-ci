#!/bin/sh

echo "\n**Installing Dependencies**\n"
npm install

echo "\n**Auditing Packages**\n"
npm audit

echo "\n**Installing Angular CLI**\n"
npm install -g @angular/cli --latest
ng config -g cli.warnings.versionMismatch false

echo "\n**Linting Code**\n"
ng lint

echo "\n**Building Project**\n"
ng build --prod

echo "\n**Running Unit Tests**\n"
ng test --watch=false --browsers=ChromeHeadlessCustom
