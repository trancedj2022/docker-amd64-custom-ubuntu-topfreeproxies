#!/usr/bin/env bash
clear
kill -9 $(ps -ef | grep -v grep | grep linux-amd64 | awk '{print $2}')
if [ "$?" == "0"  ];then echo yes,i get linux-amd64 clash and kill it;else echo oh not get;fi

PWD=`pwd`/sources
cd ${PWD}
rm -rfv *.log
cp -fv Country.mmdb .config/

cp -fv "../../topfreeproxies/Eternity.yaml" ".config/config.yaml"
sudo chmod u+x linux-amd64
nohup ./linux-amd64 -f .config/config.yaml -d .config > linux-amd64.log 2>&1 & disown

export IP=127.0.0.1 H_P=7891 S_P=7892
export http_proxy=http://${IP}:${H_P} https_proxy=http://${IP}:${H_P} all_proxy=socks5://${IP}:${S_P} HTTP_PROXY=http://${IP}:${H_P} HTTPS_PROXY=http://${IP}:${H_P} ALL_PROXY=socks5://${IP}:${S_P}
# Download mihomo
if [ $(uname -m) = 'x86_64' ];then
    echo "is amd64"
    #version=$(curl -s "https://api.github.com/repos/Dreamacro/clash/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
    version=$(curl -s "https://api.github.com/repos/MetaCubeX/mihomo/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
    #wget --verbose --show-progress=on --progress=bar --hsts-file=/tmp/wget-hsts --continue --retry-connrefused --waitretry=1 --timeout=30 --tries=3 "https://github.com/Dreamacro/clash/releases/download/$version/clash-linux-amd64-$version.gz" -O clash.gz
    wget --verbose --show-progress=on --progress=bar --hsts-file=/tmp/wget-hsts --continue --retry-connrefused --waitretry=1 --timeout=30 --tries=3 "https://github.com/MetaCubeX/mihomo/releases/download/$version/mihomo-linux-amd64-$version.gz" -O mihomo.gz
else
    echo "is not x86_64"
fi
unset http_proxy https_proxy all_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY

gunzip -f mihomo.gz

# Initialize mihomo
sudo chmod +x ./mihomo ; mv -fv ./mihomo ./linux-amd64
