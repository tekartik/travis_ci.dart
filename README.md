# travis_ci_flutter

Travis helper scripts to allow running unit test on flutter

## Setup

This assumes you are familiar with Dart and Travis integration

Include `tekartik_travis_ci_flutter` as a development dependencies in your `pubspec.yaml` file

```
dev_dependencies:
  test: any
  tekartik_travis_ci_flutter:
    git: 
      url: https://github.com/tekartik/travis_ci_flutter.dart
      ref: dart2
    version: '>=0.1.0'
```

Create the following `.travis.yml` file

````
language: dart
sudo: required
dist: trusty
dart:
  - stable
  - dev
before_script:
  - dart run tekartik_travis_ci_flutter:install
  - source $(dart run tekartik_travis_ci_flutter:env)
script:
  - dart tool/travis.dart
````

Configure your project to run in https://travis-ci.org

It will run 2 jobs, one based on the `stable` branch, one on the `dev` branch,
i.e. the same branches defined for dart.

## Example

This project use the solution itself and simply execute `flutter doctor`