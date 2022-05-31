#!/usr/bin/env sh

# 发生错误时终止
set -e

# 构建
npm run build

# 进入构建文件夹
cd dist

# 如果你要部署到自定义域名
echo 'yuumi.coldstone.fun' > CNAME

git init
git add -A
git commit -m 'feat(pages): deploy'

git push git@github.com:xrr2016/lol-yuumi.git -f

cd -