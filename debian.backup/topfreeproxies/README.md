# TopFreeProxies
[![GitHub Workflow Status](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/actions/workflows/docker-image.yml/badge.svg)](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/actions/workflows/docker-image.yml) 

![Watchers](https://img.shields.io/github/watchers/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies) ![Stars](https://img.shields.io/github/stars/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies) ![Forks](https://img.shields.io/github/forks/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies) ![Vistors](https://visitor-badge.laobi.icu/badge?page_id=smallflowercat1995.docker-amd64-custom-ubuntu-topfreeproxies) ![LICENSE](https://img.shields.io/badge/license-CC%20BY--SA%204.0-green.svg)

[仓库介绍](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/tree/master/debian.backup/topfreeproxies#仓库介绍) | [使用方法](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/tree/master/debian.backup/topfreeproxies#使用方法) | [节点信息](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/tree/master/debian.backup/topfreeproxies#节点信息) | [命令推荐](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/tree/master/debian.backup/topfreeproxies#代理命令工具选择) | [软件推荐](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/tree/master/debian.backup/topfreeproxies#客户端选择) | [仓库声明](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/tree/master/debian.backup/topfreeproxies#仓库声明)

## 仓库介绍
本仓库自动化功能全部基于 `GitHub Actions` 实现，如有需要可以自行 Fork 实现个性化需求，功能配置在 `./utils/config.ini` 配置文件中。

对网络上各免费节点池及博主分享的节点进行测速筛选出较为稳定高速的节点，再导入到仓库中进行分享记录。所筛选的节点链接在仓库 `./sub/sub_list.json` 文件中，其中大部分为其他 `GitHub` 仓库链接，这些链接包含的所有节点会合并在仓库 `./sub/sub_merge.txt` 中。

测速筛选后的节点订阅文件在仓库根目录 `Eterniy`(Base64) 和 `Eternity.yaml`(Clash)。同时在仓库的 `./update` 中保留了原始节点链接的的记录。

订阅转换使用 [subconverter](https://github.com/tindy2013/subconverter) 实现，测速功能使用 [LiteSpeedTest](https://github.com/xxf098/LiteSpeedTest) 在 `GitHub Actions` 环境下实现，所以美国节点较多，不能很好代表国内网络环境下节点可用性

虽然是测速筛选过后的节点，但仍然会出现部分节点不可用的情况，遇到这种情况建议选择`Clash`, `Shadowrocket`之类能自动切换低延迟节点的客户端。

## 使用方法
将以下订阅链接导入相应客户端即可。链接中大部分为 SS 协议节点，少量 Vmess, Trojan ,SSR 协议节点，建议选择协议支持完整的客户端。

- [多协议Base64编码](https://raw.githubusercontent.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/master/debian.backup/topfreeproxies/Eternity)
- [Clash](https://raw.githubusercontent.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/master/debian.backup/topfreeproxies/Eternity.yaml)

另有国内加速链接：

- [多协议Base64编码](https://fastly.jsdelivr.net/gh/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies@master/debian.backup/topfreeproxies/Eternity)
- [Clash](https://fastly.jsdelivr.net/gh/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies@master/debian.backup/topfreeproxies/Eternity.yaml)

>`Clash`链接所使用的配置在仓库`./update/provider/`中，有相应配置文件和以国家分类的`proxy-provider`。
>
>需要其它配置可使用订阅转换工具自行转换。
>自用在线订阅转换网址：[sub-web-modify](https://sub.v1.mk/)

## 节点信息
### 高速节点
高速节点数量: `93`
<details>
  <summary>展开复制节点</summary>

    vmess://eyJ2IjoiMiIsInBzIjoi8J+Hr/Cfh7Ug5pel5pysIDAwNCIsImFkZCI6IjE2Ny4xNzkuMTExLjIzNyIsInBvcnQiOiIxNDkzNSIsInR5cGUiOiJub25lIiwiaWQiOiJlOTYxODk0Zi04ZTkwLTQ3MmYtOThkMy0wOTQwMmU0YmU0NTMiLCJhaWQiOiIwIiwibmV0IjoidGNwIiwicGF0aCI6Ii8iLCJob3N0IjoiIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi8J+Hr/Cfh7UgLTIzNTMtSlDjgJBjY2Jhb2hlLmNvbeOAlyDmsLjkuYXlhY3otLnoioLngrnmnLrlnLoiLCJhZGQiOiI2NC4xNzYuNDcuMjAwIiwicG9ydCI6IjI5NDE0IiwidHlwZSI6Im5vbmUiLCJpZCI6IjRkNWU4YWEyLTA2NDEtNDMyMy1lOTJjLTJjMDYxY2RjOGUzNCIsImFpZCI6IjAiLCJuZXQiOiJ0Y3AiLCJwYXRoIjoiLyIsImhvc3QiOiIiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi8J+Hr/Cfh7Ugwrfml6XmnKzCt1RHQGtrb3Vva2vCtzMiLCJhZGQiOiI0Ny4yNDUuNTIuMTY1IiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjVmMTM2M2Y4LWVhZWUtNDJjNS05Yjc3LTdmZDA4MzUwYTUyOSIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvP2VkPTIwNDgiLCJob3N0IjoiZWxjanAwMS50Z3l1amNjaGFubmVsLnNpdGUiLCJ0bHMiOiIifQ==
    trojan://2d34956e-4449-4f8b-822f-b93690d89fdb@47.236.140.139:8443?allowInsecure=1&sni=global.download.synology.com#%F0%9F%87%B8%F0%9F%87%AC%20CyberAirport-SG-04%0D
    vmess://eyJ2IjoiMiIsInBzIjoiSlBfeW91dHViZUDotYTmupDliIbkuqvluIhfMTA0IiwiYWRkIjoiNDcuOTEuMjguMTUiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiNWYxMzYzZjgtZWFlZS00MmM1LTliNzctN2ZkMDgzNTBhNTI5IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8/ZWQ9MjA0OCIsImhvc3QiOiJlbGNqcDAxLnRneXVqY2NoYW5uZWwuc2l0ZSIsInRscyI6IiJ9
    trojan://29ea82cf-f956-42b2-a5dc-35feea39e7ff@download2hkt.windowsupdatea.com:443?allowInsecure=0&sni=glc-hkt2.windowsupdatea.com#%F0%9F%87%AD%F0%9F%87%B0%20%E9%A6%99%E6%B8%AF%20%E7%94%B5%E8%AE%AF%E7%9B%88%E7%A7%91%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8%202
    vmess://eyJ2IjoiMiIsInBzIjoi8J+Hr/Cfh7UgSlAoQXphZE5ldC50Lm1lKV8wMDkiLCJhZGQiOiIxODMuMTgxLjM2LjE5NCIsInBvcnQiOiI0MTU5NyIsInR5cGUiOiJub25lIiwiaWQiOiI0YTZlYWEyZC01NjAzLTRjMDUtZDk2Ny1mYjZmNDIyNTBhNWEiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiIiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoiSlBfeW91dHViZUDotYTmupDliIbkuqvluIhfMjE0IiwiYWRkIjoiNDcuMjQ1LjM4LjE0OSIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI1ZjEzNjNmOC1lYWVlLTQyYzUtOWI3Ny03ZmQwODM1MGE1MjkiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLz9lZD0yMDQ4IiwiaG9zdCI6ImVsY2pwMDEudGd5dWpjY2hhbm5lbC5zaXRlIiwidGxzIjoiIn0=
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@217.197.161.166:801#%F0%9F%87%B8%F0%9F%87%AC%20%5B01-04%5D-%F0%9F%87%B8%F0%9F%87%AC-%E6%96%B0%E5%8A%A0%E5%9D%A1-613-217.197.161.166
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuPCfh6wg576O5Zu9LXZtZXNzLWNhLjAxMTIyMzMueHl6ODQ0My3ooqvlopkt5Lit6L2sMTk5Ljg3LjIxMC4xODYt6Kej6ZSB5paw5Yqg5Z2h5Zyw5Yy6TkbpnZ7oh6rliLbliaciLCJhZGQiOiJjYS4wMTEyMjMzLnh5eiIsInBvcnQiOiI4NDQzIiwidHlwZSI6Im5vbmUiLCJpZCI6ImMzMDAwZTlkLWJlZTctNGZkYi1iMzEyLWRkMDcwMzBmMzI1ZCIsImFpZCI6IjQiLCJuZXQiOiJ3cyIsInBhdGgiOiIvaG9tZSIsImhvc3QiOiJjYS4wMTEyMjMzLnh5eiIsInRscyI6InRscyJ9
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuPCfh6wg5Lit5Zu9LXZtZXNzLTguMjE0LjMzLjE1ODgwLeiiq+WimS3nm7Tov54t6Kej6ZSB5paw5Yqg5Z2h5Zyw5Yy6TkbpnZ7oh6rliLbliaciLCJhZGQiOiI4LjIxNC4zMy4xNTgiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiY2I4MWU2YWItMWQ4My00YWMxLWYwYWQtYWU1YzJhN2MyOWVmIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoiIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi8J+Hr/Cfh7Ug576O5Zu9LXZtZXNzLWpwYXJtLmZpbmV5b28uY2Y0NDMt6KKr5aKZLeS4rei9rDE1Mi43MC44MS42Ni3op6PplIHml6XmnKzlnLDljLpORumdnuiHquWItuWJpyIsImFkZCI6ImpwYXJtLmZpbmV5b28uY2YiLCJwb3J0IjoiNDQzIiwidHlwZSI6Im5vbmUiLCJpZCI6ImJkNWVlMjQ5LWZlN2ItNDY2OS1hNmQ5LWIzZjVlZWNiOThlNiIsImFpZCI6IjQiLCJuZXQiOiJ3cyIsInBhdGgiOiIvMTIzIiwiaG9zdCI6ImpwYXJtLmZpbmV5b28uY2YiLCJ0bHMiOiJ0bHMifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi8J+Hr/Cfh7Ug576O5Zu9LXZtZXNzLWpwYXJtLmZpbmV5b28ubWw0NDMt6KKr5aKZLeS4rei9rDEzOC4yLjMzLjkwLeino+mUgeaXpeacrOWcsOWMuk5G6Z2e6Ieq5Yi25YmnIiwiYWRkIjoianBhcm0uZmluZXlvby5tbCIsInBvcnQiOiI0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiMTBiYTQ3OGUtOWRlMS00YWE5LWMwOWUtNzcwNzAyNTMzNGQzIiwiYWlkIjoiNCIsIm5ldCI6IndzIiwicGF0aCI6Ii8xMjMiLCJob3N0IjoianBhcm0uZmluZXlvby5tbCIsInRscyI6InRscyJ9
    vmess://eyJ2IjoiMiIsInBzIjoi8J+Hr/Cfh7Ug576O5Zu9LXZtZXNzLWpwYW1kLmZpbmV5b28ubWw0NDMt6KKr5aKZLeS4rei9rDEzOC4yLjMzLjEwMi3op6PplIHml6XmnKzlnLDljLpORumdnuiHquWItuWJpyIsImFkZCI6ImpwYW1kLmZpbmV5b28ubWwiLCJwb3J0IjoiNDQzIiwidHlwZSI6Im5vbmUiLCJpZCI6IjM1ZTVlMmVhLTEzNzItNDc0NS1kZmY4LWZiMmJkMTEwMTZjNCIsImFpZCI6IjQiLCJuZXQiOiJ3cyIsInBhdGgiOiIvMTIzIiwiaG9zdCI6ImpwYW1kLmZpbmV5b28ubWwiLCJ0bHMiOiJ0bHMifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HsPCfh7cg576O5Zu9LXZtZXNzLWFtZGtyLnB0dXUuZ2E0NDMt6KKr5aKZLeS4rei9rDE1Mi42OS4yMjkuMjIyLeino+mUgemfqeWbveWcsOWMuk5G6Z2e6Ieq5Yi25YmnIiwiYWRkIjoiYW1ka3IucHR1dS5nYSIsInBvcnQiOiI0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiYTYxMmI2N2YtYTc5Yi00YTcxLWE4MmItYTQ2OTA2NzUyMDIzIiwiYWlkIjoiNCIsIm5ldCI6IndzIiwicGF0aCI6Ii80MDgiLCJob3N0IjoiYW1ka3IucHR1dS5nYSIsInRscyI6InRscyJ9
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HsPCfh7cg576O5Zu9LXZtZXNzLWFtZGtyLnB0dXUubWw0NDMt6KKr5aKZLeS4rei9rDE0Ni41Ni45Ni43NS3op6PplIHpn6nlm73lnLDljLpORumdnuiHquWItuWJpyIsImFkZCI6ImFtZGtyLnB0dXUubWwiLCJwb3J0IjoiNDQzIiwidHlwZSI6Im5vbmUiLCJpZCI6ImUyY2RjMzA1LWRkYTctNDY1ZS1iNjc1LWJhMDQ2OGQyYThiMyIsImFpZCI6IjQiLCJuZXQiOiJ3cyIsInBhdGgiOiIvOTg3IiwiaG9zdCI6ImFtZGtyLnB0dXUubWwiLCJ0bHMiOiJ0bHMifQ==
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@185.160.24.217:803#%F0%9F%87%AF%F0%9F%87%B5%20%5B01-04%5D-%F0%9F%87%AF%F0%9F%87%B5-%E6%97%A5%E6%9C%AC-740-185.160.24.217
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@217.197.161.138:807#%F0%9F%87%B8%F0%9F%87%AC%20%5B01-04%5D-%F0%9F%87%B8%F0%9F%87%AC-%E6%96%B0%E5%8A%A0%E5%9D%A1-746-217.197.161.138
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@217.197.161.164:803#%F0%9F%87%B8%F0%9F%87%AC%20%5B01-04%5D-%F0%9F%87%B8%F0%9F%87%AC-%E6%96%B0%E5%8A%A0%E5%9D%A1-626-217.197.161.164
    vmess://eyJ2IjoiMiIsInBzIjoi8J+Hr/Cfh7Ug5pel5pysLXZtZXNzLTE0Ni41Ni40MC4xMTcyNzY3NS3ooqvlopkt55u06L+eLeino+mUgemfqeWbveWcsOWMuk5G6Z2e6Ieq5Yi25YmnIiwiYWRkIjoiMTQ2LjU2LjQwLjExNyIsInBvcnQiOiIyNzY3NSIsInR5cGUiOiJub25lIiwiaWQiOiIwNTNjYTBmNC0wNTdlLTQ5M2QtYWQzMC01YmE1MWYwMGY1OWMiLCJhaWQiOiI0IiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiIiLCJ0bHMiOiIifQ==
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@81.90.189.152:800#%F0%9F%87%B8%F0%9F%87%AC%20%5B01-04%5D-%F0%9F%87%B8%F0%9F%87%AC-%E6%96%B0%E5%8A%A0%E5%9D%A1-880-81.90.189.152
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@81.90.189.18:802#%F0%9F%87%B8%F0%9F%87%AC%20%5B01-04%5D-%F0%9F%87%B8%F0%9F%87%AC-%E6%96%B0%E5%8A%A0%E5%9D%A1-519-81.90.189.18
    ss://YWVzLTI1Ni1jZmI6YW1hem9uc2tyMDU@43.207.66.60:443#%F0%9F%87%AF%F0%9F%87%B5%20%5B01-04%5D-%F0%9F%87%AF%F0%9F%87%B5-%E6%97%A5%E6%9C%AC-705-43.207.66.60
    ss://YWVzLTI1Ni1jZmI6YW1hem9uc2tyMDU@54.169.86.225:443#%F0%9F%87%B8%F0%9F%87%AC%20%5B01-04%5D-%F0%9F%87%B8%F0%9F%87%AC-%E6%96%B0%E5%8A%A0%E5%9D%A1-590-54.169.86.225
    ss://YWVzLTI1Ni1jZmI6YW1hem9uc2tyMDU@54.179.75.29:443#%F0%9F%87%B8%F0%9F%87%AC%20%5B01-04%5D-%F0%9F%87%B8%F0%9F%87%AC-%E6%96%B0%E5%8A%A0%E5%9D%A1-030-54.179.75.29
    ss://YWVzLTI1Ni1jZmI6ZUlXMERuazY5NDU0ZTZuU3d1c3B2OURtUzIwMXRRMEQ@172.104.123.158:8097#%F0%9F%87%AF%F0%9F%87%B5%20%5B01-04%5D-%F0%9F%87%AF%F0%9F%87%B5-%E6%97%A5%E6%9C%AC-707-172.104.123.158
    ss://YWVzLTI1Ni1nY206UENubkg2U1FTbmZvUzI3@172.105.244.165:8090#%F0%9F%87%AF%F0%9F%87%B5%20%5B01-04%5D-%F0%9F%87%AF%F0%9F%87%B5-%E6%97%A5%E6%9C%AC-555-172.105.244.165
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@193.38.139.203:807#%F0%9F%87%AF%F0%9F%87%B5%20%E6%97%A5%E6%9C%AC-ss-193.38.139.203807-%E8%A2%AB%E5%A2%99-%E4%B8%AD%E8%BD%AC193.38.139.201-%E8%A7%A3%E9%94%81%E6%97%A5%E6%9C%AC%E5%9C%B0%E5%8C%BANF%E9%9D%9E%E8%87%AA%E5%88%B6%E5%89%A7
    ssr://MTE5LjIzNy4xOTUuMjMwOjU0MzphdXRoX2FlczEyOF9tZDU6Y2hhY2hhMjAtaWV0ZjpwbGFpbjpiV0pzWVc1ck1YQnZjblEvP2dyb3VwPVUxTlNVSEp2ZG1sa1pYSSZyZW1hcmtzPThKLUhyZkNmaDdBZ0xlbW1tZWE0cnkweE1Ua3VNak0zTGpFNU5TNHlNekEmb2Jmc3BhcmFtPSZwcm90b3BhcmFtPQ
    ssr://NDIuOTguMjcuMTgzOjU0MzphdXRoX2FlczEyOF9tZDU6Y2hhY2hhMjAtaWV0ZjpwbGFpbjpiV0pzWVc1ck1YQnZjblEvP2dyb3VwPVUxTlNVSEp2ZG1sa1pYSSZyZW1hcmtzPThKLUhyZkNmaDdBZ0xlbW1tZWE0cnkwME1pNDVPQzR5Tnk0eE9ETSZvYmZzcGFyYW09JnByb3RvcGFyYW09TlRFek5qRTZOamR0WmtsVWIwdzRORkJ1V25Fd1pB
    ssr://NDMuMjA2LjIyOS45Njo0NDM6YXV0aF9hZXMxMjhfc2hhMTphZXMtMjU2LWNmYjpwbGFpbjpkbmwxYm0xbC8_Z3JvdXA9VTFOU1VISnZkbWxrWlhJJnJlbWFya3M9OEotSHJfQ2ZoN1VnTGVhWHBlYWNyQzAwTXk0eU1EWXVNakk1TGprMiZvYmZzcGFyYW09WVdJNU16RXhOelF5TWk1cVpDNW9KU1h2djcwbDc3LTkmcHJvdG9wYXJhbT0
    ssr://NDMuMjAxLjMzLjk6NDQzOmF1dGhfYWVzMTI4X3NoYTE6YWVzLTI1Ni1jZmI6cGxhaW46ZG5sMWJtMWwvP2dyb3VwPVUxTlNVSEp2ZG1sa1pYSSZyZW1hcmtzPThKLUhyX0NmaDdVZ0xlYVhwZWFjckMwME15NHlNREV1TXpNdU9RJm9iZnNwYXJhbT1ZV0k1TXpFeE56UXlNaTVxWkM1b0pTWHZ2NzBsNzctOSZwcm90b3BhcmFtPQ
    ssr://NTEuNzkuMjIyLjk5OjQ0MzpvcmlnaW46YWVzLTI1Ni1jdHI6dGxzMS4yX3RpY2tldF9hdXRoOllubHdZWE56WlhJeU1ESXdjWGRsY25SNS8_Z3JvdXA9VTFOU1VISnZkbWxrWlhJJnJlbWFya3M9OEotSHVQQ2ZoNndnTGVhV3NPV0tvT1dkb1MwMU1TNDNPUzR5TWpJdU9UayZvYmZzcGFyYW09JnByb3RvcGFyYW09
    ssr://a3IxLnZmdW4uaWN1OjQ0MzphdXRoX2FlczEyOF9zaGExOmFlcy0yNTYtY2ZiOnBsYWluOmRubDFibTFsLz9ncm91cD1VMU5TVUhKdmRtbGtaWEkmcmVtYXJrcz04Si1IdVBDZmg2d2dMZWFXc09XS29PV2RvUzFyY2pFdWRtWjFiaTVwWTNVJm9iZnNwYXJhbT1ZV0k1TXpFeE56UXlNaTVxWkM1b2F3JnByb3RvcGFyYW09TVRjME1qSTZWRlJ3TUZOWQ
    trojan://订阅内容解析错误29ea82cf-f956-42b2-a5dc-35feea39e7ff@download1tw.windowsupdatea.com:443?allowInsecure=0#%F0%9F%87%A8%F0%9F%87%B3%20%5B01-04%5D-%F0%9F%87%B9%F0%9F%87%BC-%E5%8F%B0%E6%B9%BE%E5%8F%B0%E5%8C%97%E5%B8%82-042-download1tw.windowsupdatea.com
    trojan://订阅内容解析错误6a96b7c2-c918-3bb6-94b5-9861d13f9a00@xg107.npv4.com:443?allowInsecure=0#%F0%9F%87%AD%F0%9F%87%B0%20%5B01-04%5D-%F0%9F%87%AD%F0%9F%87%B0-%E9%A6%99%E6%B8%AF-578-xg107.npv4.com
    vmess://eyJ2IjoiMiIsInBzIjoiQHdibmV0X/Cfh63wn4ewX0hLXzciLCJhZGQiOiIxMjkuMjI3LjIwMS4yMzQiLCJwb3J0IjoiNDQzIiwidHlwZSI6Im5vbmUiLCJpZCI6ImFiYTUwZGQ0LTU0ODQtM2IwNS1iMTRhLTQ2NjFjYWY4NjJkNSIsImFpZCI6IjQiLCJuZXQiOiJ3cyIsInBhdGgiOiIvd3MiLCJob3N0IjoiYWljb282ZHUuY29tIiwidGxzIjoidGxzIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HrfCfh7AgZ2l0aHViLmNvbS9taWFuZmVpZnEgfHYycmF5ZnJlZS5ldS5vcmcgLSDpppnmuK/pmL/ph4zkupEgMSIsImFkZCI6IjczaGswMS5meDY2ODgudG9wIiwicG9ydCI6IjQ0MyIsInR5cGUiOiJub25lIiwiaWQiOiI3ZjRmZjJlMS1jMDhmLTM1YmQtYWZlNy00YTZhMzg2OTA3YWEiLCJhaWQiOiIyIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiI3M2hrMDEuZng2Njg4LnRvcCIsInRscyI6InRscyJ9
    trojan://ce433528-39fa-4711-bc0d-25a5b1579574@in-01.licom.ml:8443?allowInsecure=1&sni=in-01.licom.ml#%F0%9F%87%AF%F0%9F%87%B5%20%E6%97%A5%E6%9C%AC%20002
    trojan://ce433528-39fa-4711-bc0d-25a5b1579574@sg-01.licom.ml:8443?allowInsecure=1&sni=sg-01.licom.ml#2.53%7CSG17210416531bf1a019d1959
    trojan://c09eb137-bf68-4658-84e0-102d94b74168@jgwdj4.gaox.ml:443?allowInsecure=0&sni=jgwdj4.gaox.ml#%F0%9F%87%AF%F0%9F%87%B5%205.35%7C%20%E7%94%B2%E9%AA%A8%E6%96%87%E4%B8%9C%E4%BA%ACARM2trojan
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpHIXlCd1BXSDNWYW8@45.66.134.176:811#%F0%9F%87%AF%F0%9F%87%B5%20%E6%97%A5%E6%9C%AC-ss-45.66.134.176811-%E8%A2%AB%E5%A2%99-%E4%B8%AD%E8%BD%AC185.168.20.250-%E8%A7%A3%E9%94%81%E6%97%A5%E6%9C%AC%E5%9C%B0%E5%8C%BANF%E9%9D%9E%E8%87%AA%E5%88%B6%E5%89%A7
    trojan://7dafe71e-2be6-302f-bdfc-e6319a3299bc@tj-sg02.yiyodns.xyz:443?allowInsecure=0#%F0%9F%87%BA%F0%9F%87%B8%20Relay_%F0%9F%87%BA%F0%9F%87%B8US-%F0%9F%87%B8%F0%9F%87%ACSG_1772
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuPCfh6wgUmVsYXlf8J+HuPCfh6xTRy3wn4e48J+HrFNHXzExMzQiLCJhZGQiOiJlZWg3aWV3ZS5jb20iLCJwb3J0IjoiNDQzIiwidHlwZSI6Im5vbmUiLCJpZCI6ImFiYTUwZGQ0LTU0ODQtM2IwNS1iMTRhLTQ2NjFjYWY4NjJkNSIsImFpZCI6IjQiLCJuZXQiOiJ3cyIsInBhdGgiOiIvd3MiLCJob3N0IjoiZWVoN2lld2UuY29tIiwidGxzIjoidGxzIn0=
    vmess://eyJ2IjoiMiIsInBzIjoiUG9vbF/wn4e48J+HrFNHXzExMjYiLCJhZGQiOiIxMDMuMjUzLjI2LjEzNCIsInBvcnQiOiI0NDMiLCJ0eXBlIjoibm9uZSIsImlkIjoiYWJhNTBkZDQtNTQ4NC0zYjA1LWIxNGEtNDY2MWNhZjg2MmQ1IiwiYWlkIjoiNCIsIm5ldCI6IndzIiwicGF0aCI6Ii93cyIsImhvc3QiOiJlZWg3aWV3ZS5jb20iLCJ0bHMiOiJ0bHMifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggX1VTX+e+juWbvSAxMSIsImFkZCI6InVzLTAxLmppa3VhaS54eXoiLCJwb3J0IjoiMjA4MiIsInR5cGUiOiJub25lIiwiaWQiOiI3MDY2Njc3Ni00ZTlmLTQzNTAtYjNmMC1hZmFmZjZhNzBkYjAiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLyIsImhvc3QiOiJ1cy0wMS5qaWt1YWkueHl6IiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggX1VTX+e+juWbvSA4IDMiLCJhZGQiOiJsdDItdm1lc3Muc3NobWF4Lnh5eiIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiJlYTI5MjhjYi1mOWNjLTQ3NDctYWI2MC1kMjNhYmUzYmExZTYiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiL3ZtZXNzIiwiaG9zdCI6Imx0Mi12bWVzcy5zc2htYXgueHl6IiwidGxzIjoiIn0=
    ss://YWVzLTI1Ni1nY206WTZSOXBBdHZ4eHptR0M@38.143.66.87:3306#%F0%9F%87%BA%F0%9F%87%B8%20%5B01-04%5D-%F0%9F%87%BA%F0%9F%87%B8-%E7%BE%8E%E5%9B%BD%E5%8D%8E%E7%9B%9B%E9%A1%BF-066-38.143.66.87
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HqPCfh6Yg5Yqg5ou/5aSnIDE1OCIsImFkZCI6IjIzLjIyNy4zOC44NiIsInBvcnQiOiI4MDgwIiwidHlwZSI6Im5vbmUiLCJpZCI6Ijk2OWYxOTA5LWMwZDMtNGMzMC04MTNkLTNhZWM1YzgzOGI3ZCIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvMUlLWWpWMHIvIiwiaG9zdCI6ImRvbmd0YWl3YW5nMTMuZHRrdTQ3Lnh5eiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVVMoQXphZE5ldC50Lm1lKV8xODkiLCJhZGQiOiI0Ny44OC44Ny4zOSIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiIxODM1MTg2Mi1kOTUzLTRhYjktYWZhZS00OTk4ZGNkNTZmOGIiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiL3dSRFl5WEFnSDZvQVN6TUtzNjVWVVl3IiwiaG9zdCI6IiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggZmFyZGlhbjAxNDLwn5iN8J+HuvCfh7jwn5iNVVPwn5iNMzM2IiwiYWRkIjoiNDcuMjU0LjE2LjExNCIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiJmMzQ2NDY0Mi1mMTEzLTQ1NzUtYWEzMy1mNjhhZWY1NmI1YzAiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiL21lUEdYVzZTRlpadzJReUFxYVlLIiwiaG9zdCI6IiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVVMoQXphZE5ldC50Lm1lKV8xNzgiLCJhZGQiOiI0Ny4yNTQuMTcuMjM1IiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjJjYWE1YTBlLTUxOWItNDUwMy04MGQ0LTUzNjMxOTNlNTAxOCIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvT2dsOWRqR2JvMk5UQXQzT3ZqMU52d2pKIiwiaG9zdCI6IiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVVMoQXphZE5ldC50Lm1lKV8xODAiLCJhZGQiOiI0Ny4yNTQuMTIxLjY4IiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6ImM3NzhmYzhkLWNlMmYtNGNkMy1hOTQ5LTFiOTkwOTFjNDFkYSIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvT0ZnbGJjV1E4UDNkSlVBN3lmIiwiaG9zdCI6IiIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggX1VTX+e+juWbvSA2IDMiLCJhZGQiOiJjZi1sdC5zaGFyZWNlbnRyZS5vbmxpbmUiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiYjFlMzAzMzktYTYwMy00N2QxLWIzMWMtMWQwY2ViNTk5NTJlIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9hcGkvdjMvZG93bmxvYWQuZ2V0RmlsZSIsImhvc3QiOiJzc3JzdWIudjAwNS5zc3JzdWIuY29tIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggX1VTX+e+juWbvSAxMSAzIiwiYWRkIjoibnMxLnYyLXZpcC5mdW4iLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiYjFlMzAzMzktYTYwMy00N2QxLWIzMWMtMWQwY2ViNTk5NTJlIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9hcGkvdjMvZG93bmxvYWQuZ2V0RmlsZSIsImhvc3QiOiJzc3JzdWIudjAwNS5zc3JzdWIuY29tIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7gg576O5Zu9IENsb3VkRmxhcmXoioLngrkgMiIsImFkZCI6InNpbmdhcG9yZS5jb20iLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiYjFlMzAzMzktYTYwMy00N2QxLWIzMWMtMWQwY2ViNTk5NTJlIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9hcGkvdjMvZG93bmxvYWQuZ2V0RmlsZSIsImhvc3QiOiJzc3JzdWIudjAwNS5zc3JzdWIuY29tIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVjAxMS0tVVMt5LuY6LS55o6o6I2QZGxqLnRmL3NzcnN1YiAyIiwiYWRkIjoibnMxLnYyLXZpcC5mdW4iLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiYjFlMzAzMzktYTYwMy00N2QxLWIzMWMtMWQwY2ViNTk5NTJlIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9hcGkvdjMvZG93bmxvYWQuZ2V0RmlsZSIsImhvc3QiOiJzc3JzdWIudjAwNC5zc3JzdWIuY29tIiwidGxzIjoiIn0=
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@223.165.4.173:989#%F0%9F%87%A8%F0%9F%87%A6%20CA%28AzadNet.t.me%29_014
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVjAxMS0tVVMt5LuY6LS55o6o6I2QZGxqLnRmL3NzcnN1YiAzIiwiYWRkIjoibnMxLnYyLXZpcC5mdW4iLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiYjFlMzAzMzktYTYwMy00N2QxLWIzMWMtMWQwY2ViNTk5NTJlIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9hcGkvdjMvZG93bmxvYWQuZ2V0RmlsZSIsImhvc3QiOiJzc3JzdWIudjAwNC5zc3JzdWIuY29tIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVVMoQXphZE5ldC50Lm1lKV8xNzciLCJhZGQiOiI0Ny4yNTQuMzAuMjQzIiwicG9ydCI6IjgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjQ2OGNkZTNkLTI2YjUtNDAwNy1hMjBhLTFjZDE5ZjQ2ZDVkNiIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvS1h3SEdDcklWRzROWWlCMiIsImhvc3QiOiIiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7gg576O5Zu9XzEyMTMyMDI4MSIsImFkZCI6IjQ3LjI1NC44OS4yMTEiLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiMjAzYjJhYjItNDk5NC00MTkzLTgxOTMtNjYzMWE1NzVlZGIwIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9HU29UbDlab1lHNVYyUjBrNHRVVEdJOGsiLCJob3N0IjoiIiwidGxzIjoiIn0=
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVVMoQXphZE5ldC50Lm1lKV8wNjciLCJhZGQiOiIyRjU5QzA1RS5uaXAuaW8iLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiMzAxZDgxNWYtYTAyYS00YzJjLWE0MjQtYjE2Y2YwYTI0MWFlIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii80YTV5WHNHT0RCTTFjdmw5VHp5RjBTSFIzdiIsImhvc3QiOiIyRjU5QzA1RS5uaXAuaW8iLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVVMoQXphZE5ldC50Lm1lKV8xODciLCJhZGQiOiI0Ny44OC4xMDYuNDciLCJwb3J0IjoiODAiLCJ0eXBlIjoibm9uZSIsImlkIjoiNTJmZTg2Y2MtZGI3Zi00M2QwLTgzZjgtN2U0YzkxYTYxZjM1IiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii9xUlY4ek1NYWpReWV4NEtXVUJraWExdnZIIiwiaG9zdCI6IiIsInRscyI6IiJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTp5WmRSZ3NrZTg1SG91OTZ6MmRSZHRI@45.144.30.202:28490#%F0%9F%87%BA%F0%9F%87%B8%20%E7%BE%8E%E5%9B%BD%20V2CROSS.COM
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVVPnvo7lm70obWliZWk3Ny5jb20g57Gz6LSd6IqC54K55YiG5LqrKSIsImFkZCI6IjM4LjU0LjgyLjU0IiwicG9ydCI6IjQxNjA0IiwidHlwZSI6Im5vbmUiLCJpZCI6IjU0ZGU1MGU1LTVlNGItNDQzZi1kOWI4LTllOWUwZWVlODY1YyIsImFpZCI6IjAiLCJuZXQiOiJ0Y3AiLCJwYXRoIjoiL3FSVjh6TU1halF5ZXg0S1dVQmtpYTF2dkgiLCJob3N0IjoiIiwidGxzIjoiIn0=
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpoZzQ5JFdIODk0M2cz@104.237.224.144:18760#%F0%9F%87%BA%F0%9F%87%B8%20%5B01-04%5D-%F0%9F%87%A6%F0%9F%87%B6-%E5%8C%97%E7%BE%8E%E5%9C%B0%E5%8C%BA-785-104.237.224.144
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuvCfh7ggVVMoQXphZE5ldC50Lm1lKV8xODIiLCJhZGQiOiI0Ny4yMzYuMTIzLjEwMCIsInBvcnQiOiIzMzY4MSIsInR5cGUiOiJub25lIiwiaWQiOiI3MjAyZDExZi0yNzU5LTRkOGMtZTFkMS0xNGNiMTM4ZTQyMDUiLCJhaWQiOiIwIiwibmV0IjoidGNwIiwicGF0aCI6Ii9xUlY4ek1NYWpReWV4NEtXVUJraWExdnZIIiwiaG9zdCI6IiIsInRscyI6IiJ9
    ss://YWVzLTI1Ni1jZmI6Yndoc2tyc2tyMDU@107.182.177.136:256#%F0%9F%87%BA%F0%9F%87%B8%20%E7%BE%8E%E5%9B%BD-ss-107.182.177.136256-%E8%A2%AB%E5%A2%99-%E7%9B%B4%E8%BF%9E-%E8%A7%A3%E9%94%81%E7%BE%8E%E5%9B%BD%E5%9C%B0%E5%8C%BANF%E9%9D%9E%E8%87%AA%E5%88%B6%E5%89%A7
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HuPCfh6og55Ge5YW4IFYyQ1JPU1MuQ09NIiwiYWRkIjoid3d3LnNob3BpZnkuY29tIiwicG9ydCI6IjIwODIiLCJ0eXBlIjoibm9uZSIsImlkIjoiYmYzZDAzOGEtOTNhMi00ZTI0LTg4NmMtNmJjNjRlM2MzYTkwIiwiYWlkIjoiMCIsIm5ldCI6IndzIiwicGF0aCI6Ii8iLCJob3N0IjoiZWxzX2Nkbm9uZS55dW5qaXN1YW4uY2YiLCJ0bHMiOiIifQ==
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HrvCfh7Mg5Y2w5bqmIFYyQ1JPU1MuQ09NIDIiLCJhZGQiOiJiczEubG9hZGluZ2lwLmNvbSIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiI5ZTU5OTliYS04NzBhLTQ2YjEtODUwMC0zN2M2NDAzNzFlYzYiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiL2JzIiwiaG9zdCI6ImRsLmtndm4uZ2FyZW5hbm93LmNvbSIsInRscyI6IiJ9
    vmess://eyJ2IjoiMiIsInBzIjoiVk0tVENQLU5BIPCfh67wn4e3IElSLTgxLjEyLjI3LjcyMTk3NSDwn5OhIFBJTkctMjgzLjMxLU1TIiwiYWRkIjoiODEuMTIuMjcuNyIsInBvcnQiOiIyMTk3NSIsInR5cGUiOiJub25lIiwiaWQiOiJiM2M0OWI1My0yZDVkLTRkMTMtZDE5NS03NmQ0OGFlY2NkMTEiLCJhaWQiOiIwIiwibmV0IjoidGNwIiwicGF0aCI6Ii9icyIsImhvc3QiOiJkbC5rZ3ZuLmdhcmVuYW5vdy5jb20iLCJ0bHMiOiIifQ==
    ss://YWVzLTI1Ni1nY206S2l4THZLendqZWtHMDBybQ@167.88.61.175:8080#%E8%BF%99%E4%BA%9B%E8%8A%82%E7%82%B9%E5%8F%AA%E8%83%BD%E5%A4%87%E7%94%A8%E6%88%96%E8%80%85%E9%98%B2%E6%AD%A2%E5%A4%B1%E8%81%94%EF%BC%8C%E8%99%BD%E7%84%B6%E8%B4%A8%E9%87%8F%E5%B9%B6%E4%B8%8D%E6%98%AF%E5%BE%88%E5%A5%BD%EF%BC%8C%E4%B9%9F%E8%AF%B7%E4%BD%8E%E8%B0%83%E4%BD%BF%E7%94%A8%29%2017
    ss://YWVzLTI1Ni1nY206Y2RCSURWNDJEQ3duZklO@51.68.206.229:8118#%F0%9F%87%AC%F0%9F%87%A7%20GB%28AzadNet.t.me%29_011
    ss://YWVzLTI1Ni1nY206cEtFVzhKUEJ5VFZUTHRN@145.239.6.202:4444#%F0%9F%87%AC%F0%9F%87%A7%20github.com%2Ffreefq%20-%20%E8%8B%B1%E5%9B%BD%20%2043
    ss://YWVzLTI1Ni1nY206WTZSOXBBdHZ4eHptR0M@217.182.198.219:3389#%F0%9F%87%AB%F0%9F%87%B7%20%E6%B3%95%E5%9B%BD%20OVH%20SAS
    ss://YWVzLTI1Ni1nY206ekROVmVkUkZQUWV4Rzl2@51.77.53.200:6379#%F0%9F%87%B5%F0%9F%87%B1%20PL%28AzadNet.t.me%29_001
    ss://YWVzLTI1Ni1nY206ekROVmVkUkZQUWV4Rzl2@149.202.82.172:6379#%F0%9F%87%AB%F0%9F%87%B7%20FR%28AzadNet.t.me%29_027
    ss://YWVzLTI1Ni1nY206ekROVmVkUkZQUWV4Rzl2@145.239.1.100:6379#%F0%9F%87%AB%F0%9F%87%B7%20FR%28AzadNet.t.me%29_028
    ss://YWVzLTI1Ni1nY206ekROVmVkUkZQUWV4Rzl2@54.36.174.181:6379#%F0%9F%87%AB%F0%9F%87%B7%20FR%28AzadNet.t.me%29_026
    vmess://eyJ2IjoiMiIsInBzIjoi5pyq55+lXzEyMTMyMDAxMSIsImFkZCI6InYycmF5LmliZ2Z3LnRvcCIsInBvcnQiOiIyMDUzIiwidHlwZSI6Im5vbmUiLCJpZCI6IjBmMWIyOWI4LTBmMGYtNDMxYS1iNmQxLTAzNTgwM2E5NWMzMiIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvdlZOVUpPZ2IvIiwiaG9zdCI6InYycmF5LmliZ2Z3LnRvcCIsInRscyI6InRscyJ9
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@190.120.229.28:989#PE%28AzadNet.t.me%29
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpob2M2N0hHRjY4SGVzdWpsaWQ@93.170.73.59:51348#KZ%28AzadNet.t.me%29_002
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@138.59.16.146:989#CR%28AzadNet.t.me%29_002
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@171.22.254.17:989#MT%28AzadNet.t.me%29
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpmN0VJMGRHV1FNNDJUOGd3TjlDWklq@45.87.153.246:6199#github.com%2Ffreefq%20-%20%E6%AC%A7%E7%9B%9F%20%204
    vmess://eyJ2IjoiMiIsInBzIjoi8J+HqfCfh6ogX0RFX+W+t+WbvSAyIiwiYWRkIjoiMjE3LjE2MC40NS4zMSIsInBvcnQiOiI4ODgwIiwidHlwZSI6Im5vbmUiLCJpZCI6IjRlMTg2Njc4LWZjY2EtNDMyNS1lNGJjLWIyOTE2YmRmNjcwOCIsImFpZCI6IjAiLCJuZXQiOiJ3cyIsInBhdGgiOiIvIiwiaG9zdCI6IiIsInRscyI6IiJ9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpBR3I1Nkc2NUdGZ2w3cGhvYk1vaXRz@93.170.73.104:51348#KZ%28AzadNet.t.me%29_003
    vmess://eyJ2IjoiMiIsInBzIjoi8J+Hu/Cfh7MgfFZOfOi2iuWNl3xAd3hncWxmeHwzOSIsImFkZCI6IjEwMy4xNjYuMTg1LjEyMCIsInBvcnQiOiI4MCIsInR5cGUiOiJub25lIiwiaWQiOiJjOTUzNTdlYi0yODY5LTQ1MTEtODk0MC1mMGRjNWUxZWM5YjEiLCJhaWQiOiIwIiwibmV0Ijoid3MiLCJwYXRoIjoiLzVnc2lldXRvY2RvLmNsdWIiLCJob3N0IjoiIiwidGxzIjoiIn0=
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpOQzdqT1JWTnJydVYvKzMrUHdPSnJubk9lRzduNzVYMQ@89.19.216.18:8388#%F0%9F%87%B7%F0%9F%87%BA%20RU%28AzadNet.t.me%29_020
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@46.183.184.61:989#HR%28AzadNet.t.me%29_002
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@185.123.101.241:989#TR%28AzadNet.t.me%29_002
    ss://YWVzLTI1Ni1jZmI6ZjhmN2FDemNQS2JzRjhwMw@37.235.55.42:989#IM%28AzadNet.t.me%29_001
    

</details>

### 所有节点
合并节点总数: `2255`
[节点链接](https://raw.githubusercontent.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/master/debian.backup/topfreeproxies/sub/sub_merge_base64.txt)

### 节点来源
- [pojiezhiyuanjun/freev2](https://github.com/pojiezhiyuanjun/freev2), 节点数量: `77`
- [https://t.me/s/v2raydailyupdate](https://clashgithub.com/), 节点数量: `1`
- [freenode.openrunner.net](https://freenode.openrunner.net), 节点数量: `54`
- [Fukki-Z/nodefree](https://nodefree.org/f/freenode), 节点数量: `70`
- [ClashNode](https://clashnode.com/f/freenode), 节点数量: `28`
- [Pawdroid/Free-servers](https://github.com/Pawdroid/Free-servers), 节点数量: `40`
- [mianfeifq/share](https://github.com/mianfeifq/share), 节点数量: `168`
- [freefq/free](https://github.com/freefq/free), 节点数量: `46`
- [learnhard-cn/free_proxy_ss](https://github.com/learnhard-cn/free_proxy_ss), 节点数量: `8`
- [vpei/free-node-1](https://github.com/vpei/free-node-1), 节点数量: `626`
- [Jia-Pingwa/mianfeifq-share](https://github.com/Jia-Pingwa/mianfeifq-share), 节点数量: `195`
- [AzadNetCH/Clash](https://github.com/AzadNetCH/Clash), 节点数量: `883`
- [ssrsub/ssr](https://github.com/ssrsub/ssr), 节点数量: `371`
- [Leon406/SubCrawler](https://github.com/Leon406/SubCrawler), 节点数量: `339`
- [smallflowercat1995/mihomo-script-for-system](https://github.com/smallflowercat1995/mihomo-script-for-system), 节点数量: `850`
- [Jsnzkpg/Jsnzkpg](https://github.com/Jsnzkpg/Jsnzkpg), 节点数量: `58`
- [ermaozi/get_subscribe](https://github.com/ermaozi/get_subscribe), 节点数量: `68`
- [@peekfun](https://proxypool.link), 节点数量: `1`
- [ronghuaxueleng/get_v2](https://github.com/ronghuaxueleng/get_v2), 节点数量: `69`
- [anaer/Sub](https://github.com/anaer/Sub), 节点数量: `670`
- [xrayfree/free-ssr-ss-v2ray-vpn-clash](https://github.com/xrayfree/free-ssr-ss-v2ray-vpn-clash), 节点数量: `68`
- [aiboboxx/v2rayfree](https://github.com/aiboboxx/v2rayfree), 节点数量: `136`
- [Alvin9999/pac2](https://github.com/Alvin9999/pac2), 节点数量: `68`
- [v2ray-links/v2ray-free](https://github.com/v2ray-links/v2ray-free), 节点数量: `8`
- [Rokate/Proxy-Sub](https://github.com/Rokate/Proxy-Sub), 节点数量: `62`
- [xiyaowong/freeFQ](https://github.com/xiyaowong/freeFQ), 节点数量: `156`
- [peasoft/NoMoreWalls](https://github.com/peasoft/NoMoreWalls), 节点数量: `246`
- [chfchf0306/clash](https://github.com/chfchf0306/clash), 节点数量: `448`
- [ugvf2009/Miles](https://github.com/ugvf2009/Miles), 节点数量: `49`
- [zhlx2835/freefq](https://github.com/zhlx2835/freefq), 节点数量: `38`
- [https://fofa.info](https://fofa.info/result?qbase64=Ym9keT0i6Ieq5Yqo5oqT5Y+WdGfpopHpgZPjgIHorqLpmIXlnLDlnYDjgIHlhazlvIDkupLogZTnvZHkuIrnmoRzc+OAgXNzcuOAgXZtZXNz44CBdHJvamFu6IqC54K55L+h5oGvIg==), 节点数量: `1`
- [neko-warp.nloli.xyz](neko-warp.nloli.xyz), 节点数量: `1`
- [docker-amd64-custom-ubuntu-topfreeproxies](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies), 节点数量: `92`
- [一元机场](https://xn--4gq62f52gdss.xyz/#/dashboard), 节点数量: `10`

## 代理命令工具选择
### 主流代理命令工具
|                            MacOS                             |                            Linux                             |                           Windows                            | 简易描述                                           |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :------------------------------------------------- |
| [sing-box](https://github.com/SagerNet/sing-box/releases) | [sing-box](https://github.com/SagerNet/sing-box/releases) | [sing-box](https://github.com/SagerNet/sing-box/releases) | 	sing-box 是一个快速、可定制和通用的代理平台。它支持多种协议，包括 Shadowsocks、Vmess、Trojan 等。sing-box 具有分应用代理、自定义规则、测速、测延迟、自动更新等功能，可与 v2ray 和 mihomo 核心配合使用。此外，它还支持新的 Reality 和 Hysteria2 协议，目前多为自建节点的科学上网爱好者所用。sing-box 工具也可在 Windows、Mac、Android、iOS 和 Apple TV 等平台上使用 |
| [mihomo](https://github.com/MetaCubeX/mihomo/releases) | [mihomo](https://github.com/MetaCubeX/mihomo/releases) | [mihomo](https://github.com/MetaCubeX/mihomo/releases) | mihomo 是一个基于 Go 的规则化隧道。它支持多种协议，包括 Shadowsocks、Vmess、VLESS、WireGuard、Trojan、Trojan-Go、NaïveProxy、Hysteria 和 Reality。用户可以通过订阅、二维码、剪贴板或手动配置导入节点。mihomo 具有分应用代理、自定义规则、测速、测延迟、自动更新等功能，可与 v2ray 和 sing-box 核心配合使用 |

## 客户端选择
### 主流桌面客户端
|                            MacOS                             |                            Linux                             |                           Windows                            | 简易描述                                           |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :------------------------------------------------- |
| [sing-box](https://testflight.apple.com/join/AcqO44FH) |                              ×                               |                              ×                               | 	sing-box 是一个快速、可定制和通用的代理平台。它支持多种协议，包括 Shadowsocks、Vmess、Trojan 等。sing-box 具有分应用代理、自定义规则、测速、测延迟、自动更新等功能，可与 v2ray 和 mihomo 核心配合使用。此外，它还支持新的 Reality 和 Hysteria2 协议，目前多为自建节点的科学上网爱好者所用 |
|                              ×                               |                              ×                               |      [V2rayN](https://github.com/2dust/v2rayN/releases)      | SS, Trojan, Vmess, VLESS协议支持，有测速，测延迟功能，支持订阅，二维码，剪贴板导入及手动配置。                 |
|   [ClashX.Meta](https://github.com/MetaCubeX/ClashX.Meta)   |                              ×                               |                              ×                               | SS, SSR, Trojan, Vmess协议支持，占用资源较少。                   |
|      [V2rayU](https://github.com/yanue/V2rayU/releases)      |                              ×                               |                              ×                               | SS, Trojan, Vmess协议支持，支持订阅，二维码，剪贴板导入，手动配置，二维码分享，与 V2RayN 类似。                        |

### 主流移动客户端
|                          iOS/iPadOS                          |                           Android                            | 简易描述                                                     |
| :----------------------------------------------------------: | :----------------------------------------------------------: | ------------------------------------------------------------ |
| [sing-box](https://testflight.apple.com/join/AcqO44FH) | [sing-box](https://github.com/SagerNet/sing-box/releases) | sing-box 是一个快速、可定制和通用的代理平台。它支持多种协议，包括 Shadowsocks、Vmess、Trojan 等。sing-box 具有分应用代理、自定义规则、测速、测延迟、自动更新等功能，可与 v2ray 和 mihomo 核心配合使用。此外，它还支持新的 Reality 和 Hysteria2 协议，目前多为自建节点的科学上网爱好者所用。sing-box 免费使用 |

## 仓库声明
订阅节点仅作学习交流使用，只是对网络上节点的优选排序，用于查找资料，学习知识，不做任何违法行为。所有资源均来自互联网，仅供大家交流学习使用，出现违法问题概不负责。

## 星标统计
<a href="https://star-history.com/#smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies&type=Date" />
    <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies&type=Date" />
  </picture>
</a>


