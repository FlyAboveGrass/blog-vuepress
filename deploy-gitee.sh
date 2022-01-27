#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd dist

git init
git add -A
git commit -m 'deploy'

# 如果部署到 https://{USERNAME}.github.io
# 下面这里的url那一段你直接在你的git仓库那里复制出来粘贴就可以
# git push -f git@gitee.com:FlyAboveGrass/FlyAboveGrass.git master
git push -f https://gitee.com/FlyAboveGrass/FlyAboveGrass.git master
cd -
