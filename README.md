# PoormansAV

Designed to look for known malicious files on an old windows web server that
some AV systems didn't pick up on.A

Makes use of `md5deep.exe` - Downloadable from http://md5deep.sourceforge.net/

Sample of some known malicious files included.

Simply performs md5sum on files then compares them to whats in the known list.

`detect.bat` can be used to trigger an alert i.e. via nagios when things have
been detected.


