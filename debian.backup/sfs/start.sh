#!/usr/bin/env bash
clear
kill -9 $(ps -ef | grep -v grep | grep linux-amd64 | awk '{print $2}')
if [ "$?" == "0"  ];then echo yes,i get linux-amd64 clash and kill it;else echo oh not get;fi

PWD=`pwd`/sources
cd ${PWD}
rm -rfv *.log
cp -fv Country.mmdb .config/

cp -fv "../../topfreeproxies/Eternity.yaml" ".config/config.yaml"
chmod u+x linux-amd64
nohup ./linux-amd64 -f .config/config.yaml -d .config > linux-amd64.log 2>&1 & disown
