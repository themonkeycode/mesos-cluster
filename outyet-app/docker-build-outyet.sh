export GOPATH=~/go
echo "Get outyet app from github"
go get "github.com/golang/example/outyet"
cd $GOPATH/src/github.com/golang/example/outyet
echo "Build docker"
sudo docker build -t outyet .
