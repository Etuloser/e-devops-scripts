date=`date +%Y_%m_%d`
file_name=libs_$date
./venv/bin/pip download -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirement.txt -d $file_name
tar -cvf $file_name\.tar $file_name/ requirement.txt
echo ""
echo "Build Success!"
