# angular-full-ci

Run CI Workflow in this order:
- npm install
- npm audit
- ng lint
- ng build --prod
- ng test --watch=false --browsers=ChromeHeadlessCustom


