#!/usr/bin/env sh

# 发生错误时终止
set -e

# 构建
npm run build

# 进入构建文件夹
cd docs

# 如果你要部署到自定义域名
echo 'yuumi.coldstone.fun' > CNAME

git add -A
git commit -m 'feat(pages): deploy'
git push

cd -

exit 0