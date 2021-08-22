#git clone $PUBLIC_HEXO_GITHUB_URL
#dir_git=${PUBLIC_HEXO_GITHUB_URL##*/}
#cd ${dir_git%.*}
#Please manually use git to manage your github project in host
cd ${HEXO_REPO}
npm install
npm install hexo-deployer-git --save
npm install hexo-generator-category
npm install hexo-generator-tag
npm install hexo-render-pug hexo-renderer-stylus
npm install hexo-wordcount
npm install hexo-widget-tree
npm install hexo-blog-encrypt
git config --global user.name "tfd1949"
git config --global user.email "tfd1949@hotmail.com"
hexo generate
hexo server
