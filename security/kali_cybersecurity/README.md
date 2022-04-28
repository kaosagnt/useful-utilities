# Useful Un*x / macOS utilities

## Docker build files for running Kali Linux Cybersecurity tools in a container.

[Kali Linux Penetration Testing Bible](https://www.wiley.com/en-us/Kali+Linux+Penetration+Testing+Bible-p-9781119719076)  
Based on Appendix B - Building a Lab Environment Using Docker  
Kali Linux Penetration Testing Bible - Gus Khawaja  
(c) 2021 John Wiley & Sons  
ISBN: 978-1-119-71908-3  

NOTE: I do not suggest setting up sshd to ssh into Docker
containers. You can achieve the same functionality by setting the
DOCKER_HOST env correctly and using docker compose to access the
container. This is a more secure setup as the SSH ports are not open
on the container ans no SSH daemon is running.

This Docker container uses the Kali linux rolling release [kalilinux/kali-rolling](https://hub.docker.com/r/kalilinux/kali-rolling).


To build the Docker container from the security/kali_cybersecurity directory:

	docker-compose build --no-cache


To run the Docker container:

	docker-compose run --rm -v ${HOME}/development/cybersecurity:/cybersecurity kcs /bin/bash

NOTE: the above will mount a volume from the current users development/cybersecurity
directory into the containter as /cybersecurity. Change this to where you want your test
playgound files to reside.

It contains most of the tools used and shown within the text of the book.  

docker-compose run --rm -v ${HOME}/development/cybersecurity:/cybersecurity kcs /bin/tcsh  
Creating kali_cybersecurity_kcs_run ... done  
0c9a08cc6a92:/cybersecurity# searchsploit ms17-010  
---------------------------------------------- ---------------------------------  
 Exploit Title                                |  Path  
---------------------------------------------- ---------------------------------  
Microsoft Windows - 'EternalRomance'/'Eternal | windows/remote/43970.rb  
Microsoft Windows - SMB Remote Code Execution | windows/dos/41891.rb  
Microsoft Windows 7/2008 R2 - 'EternalBlue' S | windows/remote/42031.py  
Microsoft Windows 7/8.1/2008 R2/2012 R2/2016  | windows/remote/42315.py  
Microsoft Windows 8/8.1/2012 R2 (x64) - 'Eter | windows_x86-64/remote/42030.py  
Microsoft Windows Server 2008 R2 (x64) - 'Srv | windows_x86-64/remote/41987.py  
---------------------------------------------- ---------------------------------  
Shellcodes: No Results  
Papers: No Results  

0c9a08cc6a92:/cybersecurity# pwd  
/cybersecurity  

0c9a08cc6a92:/cybersecurity# searchsploit --mirror 43970  
  Exploit: Microsoft Windows - 'EternalRomance'/'EternalSynergy'/'EternalChampion' SMB Remote Code Execution (Metasploit) (MS17-010)  
      URL: https://www.exploit-db.com/exploits/43970  
     Path: /usr/share/exploitdb/exploits/windows/remote/43970.rb  
File Type: Ruby script, ASCII text  

Copied to: /cybersecurity/43970.rb  


0c9a08cc6a92:/cybersecurity# ls -al  
total 20  
drwxr-xr-x 2 root root  4096 Apr 25 08:01 .  
drwxr-xr-x 1 root root  4096 Apr 25 08:00 ..  
-rwxr-xr-x 1 root root 11172 Apr 25 08:01 43970.rb  

a6cfc2480db9:/cybersecurity# msfconsole   
                                                
Call trans opt: received. 2-19-98 13:24:18 REC:Loc  

     Trace program: running  
	
           wake up, Neo...  
        the matrix has you  
      follow the white rabbit.  
	
          knock, knock, Neo.  
	
                        (`.         ,-,  
                        ` `.    ,;' /  
                         `.  ,'/ .'  
                          `. X /.'  
                .-;--''--.._` ` (  
              .'            /   `  
             ,           ` '   Q '  
             ,         ,   `._    \  
          ,.|         '     `-.;_'  
          :  . `  ;    `  ` --,.._;  
           ' `    ,   )   .'  
              `._ ,  '   /_  
                 ; ,''-,;' ``-  
                  ``-..__``--`  
	
                             https://metasploit.com  
	
	
       =[ metasploit v6.1.39-dev                          ]  
+ -- --=[ 2214 exploits - 1171 auxiliary - 396 post       ]  
+ -- --=[ 616 payloads - 45 encoders - 11 nops            ]  
+ -- --=[ 9 evasion                                       ]  

Metasploit tip: Enable HTTP request and response logging   
with set HttpTrace true  

msf6 >  


165e0be9f131:/cybersecurity# nmap -V  
Nmap version 7.92 ( https://nmap.org )  
Platform: x86_64-pc-linux-gnu  
Compiled with: liblua-5.3.6 openssl-1.1.1n libssh2-1.10.0 libz-1.2.11 libpcre-8.39 nmap-libpcap-1.7.3 nmap-libdnet-1.12 ipv6  
Compiled without:  
Available nsock engines: epoll poll select  

44b7be15ac90:/cybersecurity# hydra -h  
Hydra v9.3 (c) 2022 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes   (this is non-binding, these *** ignore laws and ethics anyway).  

Syntax: hydra [[[-l LOGIN|-L FILE] [-p PASS|-P FILE]] | [-C FILE]] [-e nsr] [-o FILE] [-t TASKS] [-M FILE [-T TASKS]] [-w TIME] [-W TIME] [-f] [-s   PORT] [-x MIN:MAX:CHARSET] [-c TIME] [-ISOuvVd46] [-m MODULE_OPT] [service://server[:PORT][/OPT]]  

4b7be15ac90:/cybersecurity# fierce -h  
usage: fierce [-h] [--domain DOMAIN] [--connect] [--wide]  
              [--traverse TRAVERSE] [--search SEARCH [SEARCH ...]]  
              [--range RANGE] [--delay DELAY]  
              [--subdomains SUBDOMAINS [SUBDOMAINS ...] | --subdomain-file  
              SUBDOMAIN_FILE] [--dns-servers DNS_SERVERS [DNS_SERVERS ...] |  
              --dns-file DNS_FILE] [--tcp]  
  
A DNS reconnaissance tool for locating non-contiguous IP space.  

44b7be15ac90:/cybersecurity# nc -h  
[v1.10-47]  
connect to somewhere:	nc [-options] hostname port[s] [ports] ...   
listen for inbound:	nc -l -p port [-options] [hostname] [port]  


44b7be15ac90:/cybersecurity# arp-scan -V  
arp-scan 1.9.7  

Copyright (C) 2005-2019 Roy Hills, NTA Monitor Ltd.  
arp-scan comes with NO WARRANTY to the extent permitted by law.  
You may redistribute copies of arp-scan under the terms of the GNU  
General Public License.  
For more information about these matters, see the file named COPYING.  

libpcap version 1.10.1 (with TPACKET_V3)  



TODO: finish this documentation.
