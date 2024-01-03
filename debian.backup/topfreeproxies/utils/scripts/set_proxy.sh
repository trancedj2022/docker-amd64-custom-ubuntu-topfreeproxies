#!/usr/bin/env bash
IP=127.0.0.1
HTTP_PORT=7891
SOCKS5_PORT=$((HTTP_PORT+1))
export http_proxy=http://${IP}:${HTTP_PORT} https_proxy=${IP}:${HTTP_PORT} all_proxy=socks5://${IP}:${SOCKS5_PORT}
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
unset http_proxy https_proxy all_proxy
gunzip -f mihomo.gz
mv -fv ./mihomo ./mihomos
# Initialize Mihomo
sudo chmod +x ./mihomos && ./mihomos &

# Setup proxychains
sudo chmod 777 /etc/proxychains.conf
sudo cp -fv ./utils/scripts/proxychains.conf /etc/proxychains.conf

# Run Mihomo
pkill -f mihomos
./mihomos -f ./utils/scripts/clash_config.yml &
