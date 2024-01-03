clear
kill -9 $(ps -ef | grep -v grep | grep mihomos | awk '{print $2}')
if [ "$?" == "0"  ];then echo yes,i get mihomos clash and kill it;else echo oh not get;fi

export IP=127.0.0.1 H_P=7891 S_P=7892
export http_proxy=http://${IP}:${H_P} https_proxy=http://${IP}:${H_P} all_proxy=socks5://${IP}:${S_P} HTTP_PROXY=http://${IP}:${H_P} HTTPS_PROXY=http://${IP}:${H_P} ALL_PROXY=socks5://${IP}:${S_P}
# Download mihomo
if [ $(uname -m) = 'x86_64' ];then
    echo "is amd64"
    #version=$(curl -s "https://api.github.com/repos/Dreamacro/clash/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
    version=$(curl -s "https://api.github.com/repos/MetaCubeX/mihomo/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
    #wget --verbose --show-progress=on --progress=bar --hsts-file=/tmp/wget-hsts --continue --retry-connrefused --waitretry=1 --timeout=30 --tries=3 "https://github.com/Dreamacro/clash/releases/down>
    wget --verbose --show-progress=on --progress=bar --hsts-file=/tmp/wget-hsts --continue --retry-connrefused --waitretry=1 --timeout=30 --tries=3 "https://github.com/MetaCubeX/mihomo/releases/down>
else
    echo "is not x86_64"
fi
unset http_proxy https_proxy all_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY

gunzip -f mihomo.gz

mv -fv ./mihomo ./mihomos
cp -fv ./mihomos ../sfs/sources/linux-amd64
chmod -v +x ./mihomos ../sfs/sources/linux-amd64
rm -fv ./mihomo.gz ./mihomo

# Initialize Mihomo
sudo chmod +x ./mihomos && ./mihomos &

# Setup proxychains
sudo chmod 777 /etc/proxychains.conf
sudo cp -fv ./utils/scripts/proxychains.conf /etc/proxychains.conf

# Run Mihomo
pkill -f mihomos
./mihomos -f ./utils/scripts/clash_config.yml &
