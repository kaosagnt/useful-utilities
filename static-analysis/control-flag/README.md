# Useful Un*x / macOS utilities

## Docker build files for running ControlFlag code analysis in a container.

[ControlFlag](https://github.com/IntelLabs/control-flag)

ControlFlag is a self-supervised idiosyncratic pattern detection system that
learns typical patterns that occur in the control structures of high-level
programming languages, such as C/C++, by mining these patterns from
open-source repositories (on GitHub and other version control systems). It
then applies learned patterns to detect anomalous patterns in user's code.

To build the Docker container from the static-analysis/control-flag directory:

	docker-compose build --no-cache


To run the Docker container:

	docker-compose run --rm -v ${HOME}/development:/development cf /bin/tcsh

NOTE: the above will mount a volume from the current users development
directory into the containter as /development. Change this to where the code
under test resides.

You will aslo need to download the training data for the code under test.
i.e C / PHP from [ControlFlag Github](https://github.com/IntelLabs/control-flag)
website.

The ControlFlag code is located at /control-flag/scripts/  
Once connected to the Docker container you can run commands like the following:

	./scan_for_anomalies.sh -l 3 -t /development/code-projects/control-flag/php-data/php_controlflag_if_stmts.ts -o /development/code-projects/control-flag/scans/ -d /development/code-projects/websitebase/portal/portal_php/

Training: start.  
Trie L1 build took: 7.111s  
Trie L2 build took: 8.776s  
Training: complete.  
Storing logs in /development/code-projects/control-flag/scans/  
Scan progress:3/3 ... in progress  


TODO: finish this documentation.
