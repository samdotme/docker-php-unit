Param(
  [string]$hostSrc
)

docker run -it --rm --name phpunit -v ${hostSrc}:/src samiam236/phpunit bash runTests.sh
