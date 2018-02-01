# Docker PhpUnit
### Cause sometimes you need to do stuff in PHP

## Purpose
This project provides a way to quickly start running PhpUnit tests against an existing code repo, while avoiding all the configuration issues you would normally have to figure out.

## Usage
If you're on Windows, simply Run `RunTests.ps1`.

On Mac or Linux, `docker run -it --rm --name phpunit -v C:\ws\wp-plugins\blackcat\src:/src samiam236/phpunit bash runTests.sh`
(PRs accepted to put that into a bash script.)

## What you get out of the box
This lightweight Docker image runs on Alpine Linux and comes with:
- Bash
- PhpUnit (for actually running your unit tests)
- PhpAb (for generating the automapping file required by PhpUnit)

## Issue Reporting
If you find any issues with the Docker configuration or script configuration, please report them in this repo. However, any issues related to PhpUnit or PhpAB should be reported to those projects instead.
