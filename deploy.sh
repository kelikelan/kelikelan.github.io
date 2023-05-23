#!/usr/bin/env sh
 
# 确保脚本抛出遇到的错误
set -e
 
# 生成静态文件， npm run build
npm run build

# # 进入生成的文件夹
cd ./public

# git初始化，每次初始化不影响推送
git init
git add -A
git commit -m 'deploy'
git branch -M master

# 如果你想要部署到 https://XXXX.github.io
git push -f https://github.com/kelikelan/kelikelan.github.io.git master
echo "部署成功"
