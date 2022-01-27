#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:FlyAboveGrass/FlyAboveGrass.github.io.git master
git push -f https://github.com/FlyAboveGrass/FlyAboveGrass.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
# 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

cd -