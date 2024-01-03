#!/usr/bin/env bash
bash ./utils/scripts/set_proxy.sh
chmod -v +x ./utils/subconverter/subconverter ./utils/litespeedtest/lite
python ./utils/main.py
sed -i 's;port: 7890;port: 7891;g;s;socks-port: 7891;socks-port: 7892;g;s;external-controller: :9090;external-controller: :7896;g' ./Eternity.yaml
