# Enumeration files
The files contained in this directory are samples of resources that scanners look for. We will use this to our advantage by providing bots looking for these resources with the files they are searching for.

There is a basic NodeJS server that will serve the static files. It is not ideal, but looks legit.

## Dependencies

* Install Node: ``sudo apt-get install nodejs``
* (optional): Install tshark for passive packet capturing: ``sudo apt-get install tshark``

## Files
- ``static/basic_server.js`` The basic NodeJS server
- ``static/*`` Commonly requested resources.
- ``start_pcap.sh`` Start a tshark packet capture
- ``start_servers.sh`` Start the server
