Useful Un*x / macOS utilities
-----------------------------

A store of useful utilities that run under a Un*x like OS ie Linux / macOS / BSD.
There will be some macOS specific ones as I find time to clean them up and add to the repository.

These are some tools I use on a daily basis, some within cron scrips or setup with automation tools Like [Rundeck](rundeck.org).

To use effectively, place the bin/ directory in your path.
Most of the utilities will display debugging information by prepending the following the to command line:
	env DEBUG=1 command [options]

	convert-openssh-pk-to-SSH2-pk
		Converts OpenSSH key files to SSH2 (PuTTY) format
		
	convert-SSH2-pk-to-openssh-pk
		Converts SSH2 (PuTTY) key files to OpenSSH format
	
	memcached-port-open-test
		Test a host for open Memcached port (tcp / udp). Requires Nmap to be installed.
	
	ocsp-stapling-checker
		Tests a host to see if OCSP Stapling is configured
	
	port-open-test
		Test a host for an open TCP / UDP port. Requires Nmap to be installed.
	
	remove_definer_from_sql_dump
		Removes the "definer" from SQL dump files.
	
	tls-check-cert-valid-remote
		Test Remote HTTPS SSL / TLS certificates expiration. Default: 14 days.
	
	tls-ssl-protocol-checker
		Test a host to see which TLS / SSL protocols are enabled.
		ie SSlv3, TLSv1.0, TLSv1.1, TLSv1.2, TLSv1.3


TODO: finish this documentation.