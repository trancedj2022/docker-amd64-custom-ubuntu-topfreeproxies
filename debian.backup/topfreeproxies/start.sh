#!/usr/bin/env sh
IP=127.0.0.1
HTTP_PORT=7891
SOCKS5_PORT=$((HTTP_PORT+1))
#export http_proxy=http://${IP}:${HTTP_PORT} https_proxy=${IP}:${HTTP_PORT} all_proxy=socks5://${IP}:${SOCKS5_PORT}

bash ./utils/scripts/set_proxy.sh
#unset http_proxy https_proxy all_proxy
sudo chmod +x ./utils/subconverter/subconverter ; sudo chmod +x ./utils/litespeedtest/lite

python ./utils/main.py

sed -i 's;port: 7890;port: '${HTTP_PORT}';g;s;socks-port: 7891;socks-port: '${SOCKS5_PORT}';g;s;external-controller: :9090;external-controller: :9091;g' ./Eternity.yaml
