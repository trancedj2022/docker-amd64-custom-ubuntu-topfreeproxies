# docker-amd64-custom-ubuntu-topfreeproxies
构建特殊的ubuntu镜像运行容器，获取最终配置节点文件为我所用，主要用于学习提升技术，咳咳别想太多
[![GitHub Workflow Status](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/actions/workflows/docker-image.yml/badge.svg)](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/actions/workflows/docker-image.yml)![Watchers](https://img.shields.io/github/watchers/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies) ![Stars](https://img.shields.io/github/stars/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies) ![Forks](https://img.shields.io/github/forks/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies) ![Vistors](https://visitor-badge.laobi.icu/badge?page_id=smallflowercat1995.docker-amd64-custom-ubuntu-topfreeproxies) ![LICENSE](https://img.shields.io/badge/license-CC%20BY--SA%204.0-green.svg)
[![Star History Chart](https://api.star-history.com/svg?repos=smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies&type=Date)](https://star-history.com/#smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies&Date)

## 描述
1.为了实现 actions workflow 自动化 docker 构建运行，需要添加 `GITHUB_TOKEN` 环境变量，这个是访问 GitHub API 的令牌，可以在 GitHub 主页，点击个人头像，Settings -> Developer settings -> Personal access tokens ，设置名字为 GITHUB_TOKEN 接着要勾选权限，勾选repo、admin:repo_hook和workflow即可，最后点击Generate token，如图所示

![1](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/assets/144557489/06eceb88-80fe-4591-8416-e4ba2818424d)

2.赋予 actions[bot] 读/写仓库权限 -> Settings -> Actions -> General -> Workflow Permissions -> Read and write permissions -> save，如图所示

![2](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/assets/144557489/52c05a44-2af0-438e-8983-3ee472cffa70)

3.添加 hub.docker.com 仓库账号 DOCKER_USERNAME 在 GitHub 仓库页 -> Settings -> Secrets -> actions -> New repository secret

4.添加 hub.docker.com 仓库密码 DOCKER_PASSWORD 在 GitHub 仓库页 -> Settings -> Secrets -> actions -> New repository secret

5.以上流程如图所示

![3](https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies/assets/144557489/1665fdb2-13e7-4122-af65-f302240f63e0)

6.转到 Actions -> Docker Image CI 并且启动 workflow，实现自动化
7.目录结构：

    .                                     # 这个是根目录
    ├── .github                           # 这个是github虚拟机项目
    │   └── workflows                     # 这个是工作流文件夹
    │       ├── docker-image.yml          # 这个是docker构建编译流文件
    │       └── remove-old-workflow.yml   # 这个是移除缓存流文件
    ├── Dockerfile                        # 这个是构建docker镜像所需Dockerfile
    ├── README.md                         # 这个是项目说明文件
    ├── debian.backup                     # 这个是曾经的debian项目备份文件移植
    │   ├── crontab                       # 这个是类unix系定时任务文件crontab
    │   ├── sfs                           # 这个是暂时代理小工具
    │   │   ├── sources                   # 这个是小工具资源目录
    │   │   │   ├── .config               # 这个是小工具配置文件
    │   │   │   ├── Country.mmdb          # 这个是小工具代理列表文件
    │   │   │   ├── linux-amd64           # 这个是小工具代理程序
    │   │   │   └── linux-amd64.log       # 这个是小工具代理日志
    │   │   └── start.sh                  # 这个是小工具启动脚本
    │   ├── start.sh                      # 这个是debian备份项目启动脚本
    │   └── topfreeproxies                # 这个是大佬 aiirobyte 的项目，其原理完全不懂
    │       ├── Eternity                  # 这个是配置文件集合体
    │       ├── Eternity.yaml             # 这个是配置文件集合体
    │       ├── LICENSE                   # 这个是项目协议吧？
    │       ├── README.md                 # 这个是项目说明
    │       ├── clash                     # 这个是clash代理工具
    │       ├── clash.gz                  # 这个是clash压缩包
    │       ├── crontab                   # 这个是类unix系定时任务文件crontab
    │       ├── start.sh                  # 这个是项目启动脚本
    │       ├── sub                       # 这个是节点集合体
    │       │   ├── list                  # 这个是节点列表存放目录
    │       │   ├── sub_list.json         # 这个是节点配置文件
    │       │   ├── sub_merge.txt         # 这个是节点整合文件
    │       │   ├── sub_merge_base64.txt  # 这个是节点整合转码文件
    │       │   └── sub_merge_clash.yaml  # 这个是节点整合代理文件
    │       ├── update                    # 这个是节点更新目录
    │       │   ├── 2212                  # 这个是节点文件存放目录
    │       │   ├── 2303                  # 这个是节点文件存放目录
    │       │   ├── 2304                  # 这个是节点文件存放目录
    │       │   ├── 2305                  # 这个是节点文件存放目录
    │       │   ├── 2306                  # 这个是节点文件存放目录
    │       │   ├── 2307                  # 这个是节点文件存放目录
    │       │   ├── 2308                  # 这个是节点文件存放目录
    │       │   ├── 2309                  # 这个是节点文件存放目录
    │       │   └── 2310                  # 这个是节点文件存放目录
    │       └── utils                     # 这个是项目工具目录
    │           ├── Country.mmdb          # 这个是项目代理列表
    │           ├── __pycache__           # 这个是python缓存文件目录？
    │           ├── config.ini            # 这个是工具配置文件
    │           ├── litespeedtest         # 这个是大佬 xxf098 的 LiteSpeedTest 节点测速项目
    │           ├── main.py               # 这个是主程序脚本
    │           ├── scripts               # 这个是脚本存放目录
    │           ├── sub_merge.py          # 这个是节点整合脚本
    │           ├── sub_update.py         # 这个是根节点更新脚本
    │           └── subconverter          # 这个是大佬 tindy2013 的 subconverter 节点整合项目
    ├── docker-compose.yml                # 这个是 docker-compose 构建运行的 yml 文件
    ├── init.sh                           # 这个是 docker 构建镜像内置脚本
    └── requirements.txt                  # 这个是所需 python 环境的第三方模块

## 依赖
    amd64 设备
    docker 程序
    docker-compose 程序
    我目前能想到的必要程序就这些吧

## 构建命令
### 编译 custom-ubuntu-topfreeproxies 环境
    # clone 项目
    git clone https://github.com/smallflowercat1995/docker-amd64-custom-ubuntu-topfreeproxies.git
    # 进入目录
    cd docker-amd64-custom-ubuntu-topfreeproxies
    # 无缓存构建
    docker-compose build --no-cache
    # 构建完成后 后台启动 等待 custom-ubuntu-topfreeproxies 环境编译打包，之后这个容器会终止
    docker-compose up -d --force-recreate
    # 也可以查看日志看看有没有问题 ,如果失败了就再重新尝试看看只要最后不报错就好。
    docker-compose logs -f

# 声明
本项目仅作学习交流使用，用于查找资料，学习知识，不做任何违法行为。所有资源均来自互联网，仅供大家交流学习使用，出现违法问题概不负责。

## 感谢
~~大佬 Dreamacro：https://github.com/Dreamacro/clash~~
大佬 MetaCubeX：https://github.com/MetaCubeX/mihomo
大佬 aiirobyte：[https://gitlab.com/aiirobyte/topfreeproxies](https://gitlab.com/aiirobyte/topfreeproxies)
大佬 xxf098：[https://github.com/xxf098/LiteSpeedTest](https://github.com/xxf098/LiteSpeedTest)
大佬 tindy2013：[https://github.com/tindy2013/subconverter](https://github.com/tindy2013/subconverter)
大佬 Loyalsoldier：https://github.com/Loyalsoldier/geoip
