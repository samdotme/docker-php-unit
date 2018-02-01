#!/bin/bash
./phpab -o src/autoload.php -d src
./phpunit --bootstrap src/autoload.php src --testdox tests
