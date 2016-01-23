mkdir ~/go
echo "exporting variables"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
echo "get tools godep"
go get github.com/tools/godep
echo "get mesos-dns"
go get github.com/mesosphere/mesos-dns
echo "cd into mesos-dns directory"
cd $GOPATH/src/github.com/mesosphere/mesos-dns
echo "build mesos-dns"
godep go build .
echo "copy config file"
cp /vagrant/config_files/dns_config.json ./config.json
