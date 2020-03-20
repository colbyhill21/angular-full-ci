# Angular Full CI Action
Github Action which executes a full CI workflow for Angular projects. The workflow will audit, lint, build, and unit test Angular projects. With the option to use karma or mocha for testing.

## Usage

### Example Workflow file

A simple workflow file for running the workflow and using mocha instead of Karma is seen below.

```yaml
jobs:
  example_job:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Angular Full CI
        uses: colbyhill21/angular-full-ci/@v1.0
        with:
          testcommand: run test:ci
          mocha: true
```

NOTE: I suggest using a specific configuration for testing in the CI environment. It is important that if you are using Karma for testing that you have a configuration which uses ChromeHeadlessCustom as the browser. For an example of how to do this, see this configuration which is added to the scripts section in a project's package.json
"test:ci": "ng test --watch=false --browsers=ChromeHeadlessCustom"

## Inputs

- `testcommand`: Required. The command to run your tests, do not include "npm" it is already included. The importance of this is so that any configuration options can be used. My suggestion is to create a configuration that uses 
- `mocha`: Not required. 

## License
Scripts and documentation in this project are released under the MIT license.

## Full Project Example
[Angular Example Project with CI](https://github.com/colbyhill21/test-angular-action)
