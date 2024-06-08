# OffSec Playground: Practice: Internal (WarmUp)
This is my write up for the box `Internal` form Offensive Security's Playground Practice realm.

## Details
Platform: OffSec Playground: Practice

Difficulty: Warm Up

OS: Windows

IP: 192.168.235.40

## Recon
I started with a full namp scan, which revealed SMB, RDP and something on port 5357.

![](/screenshots/nmap.png "full nmap scan")

Additionally, the scan showed the box is running an old version of windows (2008).  Making it likely that an SMB-based vulnerability may exist.

I next ran an nmap scan with all the smb vulnerability scripts, revealing a potential hit for CVE-2009-3103
