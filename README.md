# Collection of Malware for Security Analysis.
In the spirit of open source security analysis, and a safer internet, I am providing a repository for malware I have been collecting. Please be responsible, this collection is for security analysis only.

## Storage + Safety
The Malware themselves are stored in TAR archives, and are not executable. Then I add them to an encrypted zip archive.

I run the following command each time I add something to the archive. Password files will be included in the directory if the password changes.
``find <filepath_to_this_repo> -type f -name "*.tar.gz" -exec 7z a '{}'.zip '{}' -pInfected \;``

## Perlbot
I've collected 5 of these so far. They seem to be very common.

## Bitcoin Miner
A trojan that installs a Bitcoin Miner. The mining software itself is a compiled version of [cpuminer2.3.3](https://github.com/pooler/cpuminer). It is mining in a Stratum pool, using the hashing algorithm cryptonight. The username is baked into the binary, so this miner will only mine for that user when run. User is named "sqwukiomcage". Two versions of this malware were downloaded. One compiled for Linux and the other compiled for Windows. It is named UnInstall.exe. This trojan was captured from an [Apache Struts exploit](https://github.com/mazen160/struts-pwn.git).

## PHP backdoor
The PHP backdoor was just one of several binaries / obfuscated code that got stored in my logs for that day. I still have to investigate if the binary files are re-buildable.

## For even more malware, see this repo:
[TheZoo Github repository for a huge collection of live malware.](https://github.com/ytisf/theZoo.git)

## Author

**Ian Liu-Johnston** [Twitter](https://twitter.com/@Concativerse) || [Personal Website](http://www.ianxaunliu-johnston.com/) || [Linkedin](https://www.linkedin.com/in/ian-liu-johnston-32a40a115)
