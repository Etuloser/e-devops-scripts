makecache()
{
    yum clean all
    yum makecache
    echo "Success!"
}
if [[ -n `grep "aliyun" /etc/yum.repos.d/CentOS-Base.repo` ]];then
    echo "Already replaced!"
else
    if [[ -n `cat /etc/redhat-release |grep -E "CentOS Linux release 7.*"` ]];then
        mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
        wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
        makecache
    elif [[ -n `cat /etc/redhat-release |grep -E "CentOS Linux release 6.*"` ]];then
        mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
        wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo
        makecache
    else
        echo "Please run this script in centos6/7"
    fi
fi
