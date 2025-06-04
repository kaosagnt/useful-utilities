# %BEGIN_COPYRIGHT%
#
# Copyright Ian McWilliam (kaosagnt@gmail.com).
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
#
# %END_COPYRIGHT%

# Rolling Kali Linux Cybersecurity Development Container.
# Based on Appendix B - Building a Lab Environment Using Docker
# Kali Linux Penetration Testing Bible - Gus Khawaja
# (c) 2021 John Wiley & Sons
# ISBN: 978-1-119-71908-3
#
# NOTE: I do not suggest setting up sshd to ssh into Docker
# containers. You can achieve the same functionality by setting the
# DOCKER_HOST env correctly and using docker compose to access the
# container. This is a more secure setup as the SSH ports are not open
# on the container.
FROM kalilinux/kali-rolling
LABEL org.opencontainers.image.authors="Ian McWilliam <kaosagnt@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

# - Update latest version Debs.
# - Install extra cruft we need for this container.
RUN set -eux; \
	apt -y update && \
	apt -y upgrade && \
	apt -y install --no-install-recommends \
		arp-scan bind9-dnsutils iputils-ping \
		fierce file hydra netcat-traditional nmap \
		metasploit-framework sqlmap gobuster wordlists \
		nano nfs-common cifs-utils exploitdb exploitdb-papers \
		git tcsh

#Get seclist from GitHub and save it in the /opt folder
RUN git clone https://github.com/danielmiessler/SecLists.git /opt/seclists

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/*

# nano tabsize 4
RUN sed -i 's/# set tabsize 8/set tabsize 4/g' /etc/nanorc

# Copy in config files now that the packages have been installed.
ADD files/etc/ /etc/

RUN update-alternatives --install /usr/local/bin/python python \
	/usr/bin/python3 40

#Set working Dir
WORKDIR /cybersecurity/

# docker-compose build --no-cache
# docker-compose run --rm -v ${HOME}/development/cybersecurity:/cybersecurity kcs /bin/bash
