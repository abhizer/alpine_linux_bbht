#!/bin/sh

echo "Thanks for using this script!"
echo " - @abhizer / http://www.abhizer.com"

printf "\nUpdating and upgrading Alpine Linux!\n"
apk update
apk upgrade

printf "\nDone! Now, installing bash, python3, py-pip, nmap, git, openssh, rust, perl and, curl!\n"
apk add bash python3 py-pip nmap git openssh rust perl curl

printf "\nNow, downloading and setting up Go environment!\n"
apk add make musl-dev go

echo "export GOROOT=/usr/lib/go" >> /etc/profile
echo "export GOPATH=/go" >> /etc/profile
echo "export PATH=$PATH:/go/bin" >> /etc/profile
mkdir -p ${GOPATH}/src ${GOPATH}/bin
. /etc/profile


printf "\nDownload ffuf!\n"

go get github.com/ffuf/ffuf
mkdir /bbht/
cd /bbht/

printf "\nInstalling Sublist3r!\n"
git clone https://github.com/aboul3la/Sublist3r.git
pip3 install -r Sublist3r/requirements.txt

printf "\nInstalling Amass!\n"
export GO111MODULE=on
go get -v -u github.com/OWASP/Amass/v3/...

printf "\nInstalling findomain!\n"
wget https://github.com/Edu4rdSHL/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
cp findomain-linux /usr/bin/

printf "\nInstalling waybackurls!\n"
go get github.com/tomnomnom/waybackurls

printf "\nInstalling meg!\n"
go get -u github.com/tomnomnom/mego

printf "\nInstalling httprobe!\n"
go get -u github.com/tomnomnom/httprobe

printf "\nInstalling sqlmap!\n"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev

printf "\nInstalling assetfinder!\n"
go get -u github.com/tomnomnom/assetfinder

printf "\nInstalling hakrawler!\n"
go get github.com/hakluke/hakrawler

printf "\nInstalling virtual-host-discovery!\n"
git clone https://github.com/jobertabma/virtual-host-discovery.git

printf "\nInstalling relative-url-extractor!\n"
git clone https://github.com/jobertabma/relative-url-extractor.git

printf "\nInstalling unfurl!\n"
go get -u github.com/tomnomnom/unfurl

printf "\nDownloading SecLists!\n"
git clone https://github.com/danielmiessler/SecLists.git
