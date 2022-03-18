# Tags and respective `Dockerfile` links

- [`3.15.1`, `3.15`, `3`, `latest` *(3.15.1/Dockerfile)*](https://github.com/nbrownuk/docker-nwutils/blob/master/Dockerfile)

# What is this image?

This image contains various network utilities and tools. More specifically, it contains the tools incorporated in the Alpine Linux [bind-tools](https://pkgs.alpinelinux.org/contents?branch=edge&name=bind-tools&arch=x86_64&repo=main) and [net-tools](https://pkgs.alpinelinux.org/contents?branch=v3.6&name=net-tools&arch=x86_64&repo=main) packages.

# How to use this image

## Invoking network utilities

Running a container derived from the image will place you in a shell, from where it will be possible to run any of the network utilities included in the packages, e.g.:

```
$ docker container run --rm -it nbrown/nwutils
/ # nslookup docker.io
Server:		google-public-dns-a.google.com
Address:	8.8.8.8#53

Non-authoritative answer:
Name:	docker.io
Address: 34.200.194.233
Name:	docker.io
Address: 52.87.47.61
Name:	docker.io
Address: 52.200.132.201
```

Alternatively, the default `CMD` instruction can be overridden on container invocation:

```
$ docker container run --rm nbrown/nwutils dig docker.io @google-public-dns-a.google.com

; <<>> DiG 9.11.1-P1 <<>> docker.io @google-public-dns-a.google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 35030
;; flags: qr rd ra; QUERY: 1, ANSWER: 3, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
;; QUESTION SECTION:
;docker.io.			IN	A

;; ANSWER SECTION:
docker.io.		59	IN	A	34.200.194.233
docker.io.		59	IN	A	52.87.47.61
docker.io.		59	IN	A	52.200.132.201

;; Query time: 53 msec
;; SERVER: 8.8.8.8#53(8.8.8.8)
;; WHEN: Fri Jul 14 11:54:54 UTC 2017
;; MSG SIZE  rcvd: 86
```
