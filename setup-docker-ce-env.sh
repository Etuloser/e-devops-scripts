# step 1: 安装必要的一些系统工具
yum install -y yum-utils device-mapper-persistent-data lvm2
# Step 2: 添加软件源信息
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
# Step 3: 更新并安装 Docker-CE
yum makecache fast
yum -y install docker-ce
# Step 4: 开启Docker服务
systemctl start docker
# Step 5: 设置Dokcer服务开启启用
systemctl enable docker
# Step 6: 配置Dokcer加速器
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://00033811.m.daocloud.io
# Step 7: 重启Docker服务器以生效
systemctl restart docker
