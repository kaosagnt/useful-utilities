## remount-ntfs ##

A script to remount an NTFS volume as read / write.
By default macOS will mount all NTFS volumes as read only.

Running this script will scan for a mounted read only NTFS volume
and attempt to mount it as read / write.

You will need to have the following installed:

[macFUSE](https://osxfuse.github.io)

macFUSE allows you to extend macOS's native file handling capabilities via third-party file systems.

[NTFS-3G](https://github.com/tuxera/ntfs-3g)

The NTFS-3G driver is an open source, freely available read/write NTFS driver 
for Linux, FreeBSD, macOS, NetBSD, OpenIndiana, QNX and Haiku. It provides 
safe and fast handling of the Windows XP, Windows Server 2003, Windows 2000, 
Windows Vista, Windows Server 2008, Windows 7, Windows 8, Windows Server 2012,
Windows Server 2016, Windows 10 and Windows Server 2019 NTFS file systems.

The easy way to install NTFS-3g is via [Homebrew](https://brew.sh)

The Missing Package Manager for macOS (or Linux).

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


[gromgit's macOS FUSE stuff](https://github.com/gromgit/homebrew-fuse)

This tap exists to support macOS FUSE-related software that have been dropped from Homebrew core.

	brew install gromgit/fuse/ntfs-3g-mac

NOTE: If you want the NTFS mount to show up in the Finder and on the Desktop, you will
need to edit and add the following to /usr/local/sbin/mount_ntfs

	-o auto_xattr \

Just add it after the line -o big_writes \

	-o big_writes \
	-o auto_xattr \
	"$@" >> /var/log/mount-ntfs-3g.log 2>&1


