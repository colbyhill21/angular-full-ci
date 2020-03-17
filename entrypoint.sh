#!/usr/bin/env bash
npm install
npm install -g @angular/cli --latest
npm audit
ng lint
ng build --prod
ng test --watch=false --browsers=ChromeHeadlessCustom
