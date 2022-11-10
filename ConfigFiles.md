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
