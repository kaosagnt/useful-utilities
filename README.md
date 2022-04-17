# Useful Un*x / macOS utilities

A store of useful utilities that run under a Un*x like OS ie Linux / macOS / BSD.
There will be some macOS specific ones as I find time to clean them up and add to the repository.

These are some tools I use on a daily basis, some within cron scrips or setup with automation tools Like [Rundeck](https://rundeck.org).

To use effectively, place the bin/ directory in your path.
Most of the utilities will display debugging information by prepending the following the to command line:
	env DEBUG=1 command [options]

	convert-openssh-pk-to-SSH2-pk
		Converts OpenSSH key files to SSH2 (PuTTY) format
	
	convert-SSH2-pk-to-openssh-pk
		Converts SSH2 (PuTTY) key files to OpenSSH format
	
	extract-docker-image
		Extracts a Docker container image filesystem by either connecting to the Docker daemon
		and saving the image, or from an existing saved Docker image file. The exisiting image file
		may be gzipped. Allows one to easily access and save config files from images without having
		to run the image and mount volumes. Can also be used to interrogate packages installed within
		a container image.
	
	memcached-port-open-test
		Test a host for open Memcached port (tcp / udp). Requires Nmap to be installed.
	
	ocsp-stapling-checker
		Tests a host to see if OCSP Stapling is configured
	
	oval-gen-report-from-xml
		Converts Security Content Automation Protocol (SCAP) openscap xml report files to html for viewing in a browser.
	
	oval-security-scan
		Uses the OVAL vulnerability and patch definitions to audit for Common Vulnerabilities and Exposures (CVEs).
		This tool uses Security Content Automation Protocol (SCAP) tool openscap to scan a system for vulnerabilities.
		oval-security-scan can be used in automation tools like ansible to automate the scaning of multiple systems.
		Supports Red Hat / Debian / Ubuntu based Operating systems.
	
	port-open-test
		Test a host for an open TCP / UDP port. Requires Nmap to be installed.
	
	remove_definer_from_sql_dump
		Removes the "definer" from SQL dump files.
	
	tls-check-cert-valid-remote
		Test Remote HTTPS SSL / TLS certificates expiration. Default: 14 days.
	
	tls-ssl-protocol-checker
		Test a host to see which TLS / SSL protocols are enabled.
		ie SSlv3, TLSv1.0, TLSv1.1, TLSv1.2, TLSv1.3

## Static Code Analysis tools

	control-flag
		Docker build files for running ControlFlag code analysis in a container.


TODO: finish this documentation.