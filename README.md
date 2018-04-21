# Headless TeamSpeak 3 Client

Docker image with headless TeamSpeak3 client for testing using TS3AudioBot by Splamy.

Docker images can be found at:
https://hub.docker.com/r/ronindesign/teamspeak-client/
https://hub.docker.com/r/ronindesign/teamspeak-client-default/

Pull / run from docker:

For immediate client connecting to (assumed) TeamSpeak 3 server on Docker host 172.17.0.1:
`docker run -d ronindesign/teamspeak-client-default`

For generic TeamSpeak 3 client image that does not immediatly connect client, use:
`docker run -d ronindesign/teamspeak-client`

This is ideal when you want to:

- Create new commit / image from existing client template for your own purpose.
- Change initial image state or additional configuration.

Again, please note that a container created from main `teamspeak-client` image does NOT connect to teamspeak server immediatly.

This images is essentially the same as `teamspeak-client-default`, but does not copy client config or run the actual client binary.

_See ./default-client/Dockerfile for how these commands are called_
