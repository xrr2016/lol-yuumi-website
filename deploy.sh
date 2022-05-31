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
git checkout -b gh-pages
git add -A
git commit -m 'deploy'

git push -f

cd -