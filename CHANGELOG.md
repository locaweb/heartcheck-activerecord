# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased][]

## [0.1.2](https://github.com/locaweb/heartcheck-activerecord/compare/v0.1.1...v0.1.2) - 19-03-2021
### Added
  - Support for `activerecord` 6.1 versions and Ruby 3.0

## [0.1.1](https://github.com/locaweb/heartcheck-activerecord/compare/v0.1.0...v0.1.1) - 19-03-2021
### Added
  - Support for `activerecord` 6.0 versions

## [0.1.0](https://github.com/locaweb/heartcheck-activerecord/compare/v0.1.0...v0.0.3) - 22-05-2020
### Added
  - Support for Ruby 2.4, 2.5, 2.6 and 2.7
  - Support for `activerecord` 4.2.X and 5.X versions
  - Upgraded `heartcheck` to next major (`2.0.0`)
  - CLI script for development environment
  - CHANGELOG file to track new releases

### Removed
  - Support for older versions than Ruby 2.3

### Security
  - Fixed CVE-2018-16471, CVE-2016-6317, CVE-2017-17042 issues, and other
    secuerity alerts due to gem's old versions
