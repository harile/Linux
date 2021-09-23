﻿# LPIC 1 - EXAM - APRIL 2021

  

**1.Which type of file system is created by mkfs when it is executed with the block device name only and without any additional parameters?**

A. XFS

B. VFAT

C. ext2

D. ext3

E. ext4

  

**2. Which umask value ensures that new directories can be read, written and listed by their owning user, read and listed by their owning group and are not accessible at all for everyone else?**

A. 0750

B. 0027

C. 0036cd

D. 7640

E. 0029

  

**3. Which of the following commands changes the number of days before the ext3 filesystem on /dev/sda1 has to run through a full filesystem check while booting?**

A. tune2fs “”d 200 /dev/sda1

B. tune2fs “”i 200 /dev/sda1

C. tune2fs “”c 200 /dev/sda1

D. tune2fs “”n 200 /dev/sda1

E. tune2fs –days 200 /dev/sda1

  

**4. Which is the default percentage of reserved space for the root user on new ext4 filesystems?**

A. 10%

B. 3%

C. 15%

D. 0%

E. 5%

  

**5. Which of the following is true when a file system, which is neither listed in /etc/fstab nor known to system, is mounted manually?**

A. systemd ignores any manual mounts which are not done using the systemctl mount command

B. The command systemctl mountsync can be used to create a mount unit based on the existing mount

C. systemd automatically generates a mount unit and monitors the mount point without changing it

D. Unless a systemd mount unit is created, systemd unmounts the file system after a short period of time

E. systemctl unmount must be used to remove the mount because system opens a file descriptor on the mount point

  

****6. FILL BLANK –

Which program updates the database that is used by the locate command? (Specify ONLY the command without any path or parameters) ****

7. What does the command mount –bind do?

A. It makes the contents of one directory available in another directory

B. It mounts all available filesystems to the current directory

C. It mounts all user mountable filesystems to the user”™s home directory

D. It mounts all file systems listed in /etc/fstab which have the option userbind set

E. It permanently mounts a regular file to a directory

  

****8. Consider the following output from the command ls “”i:**

How would a new file named c.txt be created with the same inode number as a.txt (Inode 525385)?**

A. ln “”h a.txt c.txt

B. ln c.txt a.txt

C. ln a.txt c.txt

D. ln “”f c.txt a.txt

E. ln “”i 525385 c.txt

  

**9. Consider the following directory:**

drwxrwxr-x 2 root sales 4096 Jan 1 15:21 sales

Which command ensures new files created within the directory sales are owned by the group sales? (Choose two.)

A. chmod g+s sales

B. setpol “”R newgroup=sales sales

C. chgrp “”p sales sales

D. chown –persistent *.sales sales

E. chmod 2775 sales

  

**10. In order to display all currently mounted filesystems, which of the following commands could be used? (Choose two.)**

A. cat /proc/self/mounts

B. free

C. lsmounts

D. mount

E. cat /proc/filesystems

  

**11. FILL BLANK –

Which command displays the current disk space usage for all mounted file systems? (Specify ONLY the command without any path or parameters.)**

12. Which chown command changes the ownership to dave and the group to staff on a file named data.txt?

A. chown dave/staff data.txt

B. chown “”u dave “”g staff data.txt

C. chown –user dave –group staff data.txt

D. chown dave+staff data.txt

E. chown dave:staff data.txt

  

**13. When considering the use of hard links, what are valid reasons not to use hard links?**

A. Hard links are not available on all Linux systems because traditional filesystems, such as ext4, do not support them

B. Each hard link has individual ownership, permissions and ACLs which can lead to unintended disclosure of file content

C. Hard links are specific to one filesystem and cannot point to files on another filesystem

D. If users other than root should be able to create hard links, suln has to be installed and configured

E. When a hard linked file is changed, a copy of the file is created and consumes additional space

  

**14. In compliance with the FHS, in which of the directories are man pages found?**

A. /opt/man/

B. /usr/doc/

C. /usr/share/man/

D. /var/pkg/man

E. /var/man/

  

**15. FILL BLANK –

Which file in the /proc filesystem lists parameters passed from the bootloader to the kernel? (Specify the file name only without any path.)**

  

**16. What is the process ID number of the init process on a System V init based system?**

A. -1

B. 0

C. 1

D. It is different with each reboot

E. It is set to the current run level

  

**17. Which daemon handles power management events on a Linux system?**

A. acpid

B. batteryd

C. pwrmgntd

D. psd

E. inetd

  

**18. Which of the following statements are true about the boot sequence of a PC using a BIOS? (Choose two.)**

A. Some parts of the boot process can be configured from the BIOS

B. Linux does not require the assistance of the BIOS to boot a computer

C. The BIOS boot process starts only if secondary storage, such as the hard disk, is functional

D. The BIOS initiates the boot process after turning the computer on

E. The BIOS is started by loading hardware drivers from secondary storage, such as the hard disk

  

**19. What is true regarding UEFI firmware? (Choose two.)**

A. It can read and interpret partition tables

B. It can use and read certain file systems

C. It stores its entire configuration on the /boot/ partition

D. It is stored in a special area within the GPT metadata

E. It is loaded from a fixed boot disk position

  

**20. A faulty kernel module is causing issues with a network interface card. Which of the following actions ensures that this module is not loaded automatically when the system boots?**

A. Using lsmod –remove –autoclean without specifying the name of a specific module

B. Using modinfo “”k followed by the name of the offending module

C. Using modprobe “”r followed by the name of the offending module

D. Adding a blacklist line including the name of the offending module to the file /etc/modprobe.d/blacklist.conf

E. Deleting the kernel module”™s directory from the file system and recompiling the kernel, including its modules

  

**21. When is the content of the kernel ring buffer reset? (Choose two.)**

A. When the ring buffer is explicitly reset using the command dmesg –clear

B. When the ring buffer is read using dmesg without any additional parameters

C. When a configurable amount of time, 15 minutes by default, has passed

D. When the kernel loads a previously unloaded kernel module

E. When the system is shut down or rebooted

  

**22. What is the first program the Linux kernel starts at boot time when using System V init?**

A. /lib/init.so

B. /proc/sys/kernel/init

C. /etc/rc.d/rcinit

D. /sbin/init

E. /boot/init

  

**23. A Debian package creates several files during its installation. Which of the following commands searches for packages owning the file /etc/debian_version?**

A. apt-get search /etc/debian_version

B. apt “”r /etc/debian_version

C. find /etc/debian_version -dpkg

D. dpkg “”S /etc/debian_version

E. apt-file /etc/debian_version

  

**24. What is contained on the EFI System Partition?**

A. The Linux root file system

B. The first stage boot loader

C. The default swap space file

D. The Linux default shell binaries

E. The user home directories

  

**25. Which of the following directories on a 64 bit Linux system typically contain shared libraries? (Choose two.)**

A. ~/.lib64/

B. /usr/lib64/

C. /var/lib64/

D. /lib64/

E. /opt/lib64/



--------
Thêm phần đáp án nè
