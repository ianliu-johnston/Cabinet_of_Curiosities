# Collection of Malware for Security Analysis.
In the spirit of open source security analysis, and a safer internet, I am providing a repository for malware I have been collecting. Please be responsible, this collection is for security analysis only.

To capture these samples, I am running a honeypot server that is hosting a simple NodeJS webserver that serves static files, and Dionaea.

## Storage + Safety
The Malware themselves are stored in TAR archives, and are not executable. Then I add them to an encrypted zip archive.

I run the following command each time I add something to the archive. Password files will be included in the directory if the password changes. They will usually be password protected with the phrase <em>infected</em> or <em>Infected</em>
``find <filepath_to_this_repo> -type f -name "*.tar.gz" -exec 7z a '{}'.zip '{}' -pinfected \;``

Also included in this repository are periodic dumps of raw data from the Dionaea honeypot.

## Installing and Running Dionaea
I installed Dionaea from source on Ubuntu 16.04.2 LTS (xenial), not from the apt-repository. I followed these steps, as outlined in the [Dionaea docs](https://dionaea.readthedocs.io/en/latest/installation.html). The only difference is ommitting the dependency ``libnl-dev``.

1. sudo apt-get update
2. Install dependencies
```
	sudo apt-get install \
    autoconf \
    automake \
    build-essential \
    check \
    cython3 \
    libcurl4-openssl-dev \
    libemu-dev \
    libev-dev \
    libglib2.0-dev \
    libloudmouth1-dev \
    libnetfilter-queue-dev \
    libpcap-dev \
    libssl-dev \
    libtool \
    libudns-dev \
    python3 \
    python3-dev \
    python3-yaml \
	git
```

3. Clone the Dionaea repository and cd into it:
```
	git clone https://github.com/DinoTools/dionaea.git ~/dionaea
	cd ~/dionaea
```

4. Build or rebuild the build scripts: ``autoreconf -vi``
5. Run ``configure`` to configure the build scripts:
```
./configure \
    --disable-werror \
    --prefix=/opt/dionaea \
    --with-python=/usr/bin/python3 \
    --with-cython-dir=/usr/bin \
    --with-ev-include=/usr/include \
    --with-ev-lib=/usr/lib \
    --with-emu-lib=/usr/lib/libemu \
    --with-emu-include=/usr/include \
    --with-nl-include=/usr/include/libnl3 \
    --with-nl-lib=/usr/lib
```
6. Run make and make install: ``make && sudo make install``. After this step, Dionaea is installed in ``/opt/dionaea/bin/dionaea``.

7. To limit Dionaea's permissions, I create a new user: ``sudo useradd dionaea`` and create a password for the user: ``sudo passwd dionaea``  

8. Non-root users cannot bind to ports below 1024, so I install a package to allow the user Dionaea to use low port numbers ``sudo apt-get install authbind``

9. I configure authbind:
```
sudo touch /etc/authbind/byport/{21,22,23,42,53,80,135,443,445,1433,1723,3306,5060,5061}
sudo chown dionaea:dionaea /etc/authbind/byport/*
```

10. Next, I give the dionaea user ownership over the dionaea directory: ``sudo chown dionaea:dionaea -R /opt/dionaea``

11. Finally, I can run Dionaea under the user dionaea: ``su -c "/opt/dionaea/bin/dionaea -D -L '-[filtered ip address]'" dionaea"``

## Categories of Malware
### Perlbot
I've collected 5 of these so far. They seem to be very common.

### Bitcoin Miner
A trojan that installs a Bitcoin Miner. The mining software itself is a compiled version of [cpuminer2.3.3](https://github.com/pooler/cpuminer). It is mining in a Stratum pool, using the hashing algorithm cryptonight. The username is baked into the binary, so this miner will only mine for that user when run. User is named "sqwukiomcage". Two versions of this malware were downloaded. One compiled for Linux and the other compiled for Windows. It is named UnInstall.exe. This trojan was captured from an [Apache Struts exploit](https://github.com/mazen160/struts-pwn.git).

### PHP backdoor
The PHP backdoor was just one of several binaries / obfuscated code that got stored in my logs for that day. I still have to investigate if the binary files are re-buildable.

### Dionaea Dumps
These are like the malwares above, first compressed into a tar archive, then encrypted in a zipped file with the password <em>infected</em>.

## Additional Resources
* [TheZoo Github repository for a huge collection of live malware.](https://github.com/ytisf/theZoo.git)
* [Dionaea Honeypot](https://github.com/DinoTools/dionaea)
* [Dionaea ReadTheDocs](https://dionaea.readthedocs.io/en/latest/)

## Author

**Ian Liu-Johnston** [Twitter](https://twitter.com/@Concativerse) || [Personal Website](http://www.ianxaunliu-johnston.com/) || [Linkedin](https://www.linkedin.com/in/ian-liu-johnston-32a40a115)
