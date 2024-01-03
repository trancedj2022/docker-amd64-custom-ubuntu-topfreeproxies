#!/usr/bin/env sh
bash ./utils/scripts/set_proxy.sh
sudo chmod +x ./utils/subconverter/subconverter ; sudo chmod +x ./utils/litespeedtest/lite
python ./utils/main.py
sed -i 's;port: 7890;port: '${HTTP_PORT}';g;s;socks-port: 7891;socks-port: '${SOCKS5_PORT}';g;s;external-controller: :9090;external-controller: :7896;g' ./Eternity.yaml
