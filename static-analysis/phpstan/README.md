# Useful Un*x / macOS utilities

## Docker build files for running PHPStan code analysis in a container.

[PHPStan](https://phpstan.org)

PHPStan scans your whole codebase and looks for both obvious & tricky bugs.

The guide to running PHPStan in a docker container can be found [here](https://phpstan.org/user-guide/docker).

To build the Docker container from the static-analysis/phpstan directory:

	docker-compose build --no-cache


To run the Docker container:

	docker-compose run --rm -v ${HOME}/development:/development phps analyse [phpstan arguments nnd paths]

NOTE: the above will mount a volume from the current users development
directory into the containter as /development. Change this to where the code
under test resides.

An example run:

	docker-compose run --rm -v ${HOME}/development:/development phps analyse /development/code-projects/websitebase/cgi-bin/ /development/code-projects/websitebase/library/library_php/  

Creating phpstan_phps_run ... done  
 204/204 [▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓] 100%  

 ------ ---------------------------------------------------------------------  
  Line   /development/code-projects/websitebase/cgi-bin/login-php.php         
 ------ ---------------------------------------------------------------------  
  20     Instantiated class loginClass not found.                             
         💡 Learn more at https://phpstan.org/user-guide/discovering-symbols   
 ------ ---------------------------------------------------------------------  
  
 ------ ---------------------------------------------------------------------   
  Line   /development/code-projects/websitebase/cgi-bin/logout-php.php        
 ------ ---------------------------------------------------------------------  
  20     Instantiated class logoutClass not found.                            
         💡 Learn more at https://phpstan.org/user-guide/discovering-symbols  


TODO: finish this documentation.
