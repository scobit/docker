### Registry certificate folder
/etc/docker/certs.d/                                                                                                                                                         
   
/etc/docker/daemon.json

{
 "data-root": "/data/docker",
 "debug": true,
 "experimental": true,
 "metrics-addr": "0.0.0.0:9999",
 "insecure-registries" : ["registry-1.docker.io", "gcr.io", "gitlab.kcell.kz"],
 "dns": ["192.168.213.243","192.168.213.249","192.168.190.5","192.168.191.5","192.168.192.5"]
}

  
/root/.docker/config.json 
or
~/.docker/config.json

{
	"auths": {
		"artifactory.kraken.kcell.kz:6555": {
			"auth": "YWRtaW46YWRtaW4="
		},
		"https://index.docker.io/v1/": {
			"auth": "ZXJraW5vemthbjpkb2NrZXJfMDkwOQ=="
		},
		"registry-1.docker.io": {
			"auth": "ZXJraW5vemthbjpkb2NrZXJfMDkwOQ=="
		}
	}


Error response from daemon: Get "https://artifactory.kcell.kz:6555/v2/": Tunnel or SSL Forbidden

https://docs.docker.com/config/daemon/systemd/
https://docs.docker.com/config/containers/live-restore/

cat /etc/systemd/system/docker.service.d/http-proxy.conf

[Service]
Environment="HTTP_PROXY=http://192.168.194.69:3128" 
Environment="HTTPS_PROXY=http://192.168.194.69:3128" 
Environment="NO_PROXY="localhost,127.0.0.1,::1,vkc-aptmirror,192.168.195.195,192.168.217.42,*.kcell.kz,*.kraken.kcell.kz,gitlab.kcell.kz,192.168.213.154,192.168.213.155,192.168.213.156,artifactory.kraken.kcell.kz,artifactory.kcell.kz:6555"



https://www.ibm.com/support/pages/steps-follow-while-restarting-kubernetes-and-docker-infosphere-information-server-installations
