#git clone $PUBLIC_HEXO_GITHUB_URL
#dir_git=${PUBLIC_HEXO_GITHUB_URL##*/}
#cd ${dir_git%.*}
#Please manually use git to manage your github project in host
#cd ${HEXO_REPO}
hexo init hexo-site
cd hexo-site
npm install
#npm install hexo-deployer-git --save 
#npm install hexo-render-pug hexo-renderer-stylus
#npm install hexo-wordcount
#git config --global user.name "peyoot"
#git config --global user.email "peyoot@hotmail.com"
hexo generate
hexo server
