### 运行hexo，并部署到github pages上的docker-compose项目
基于node:14-alpine镜像，拉取hexo和github pages项目到容器中，在build_and_run.sh脚本中修改你的github帐号。
hexo及其主题的可配置和正常hexo类似。这个容器将是你hexo的web服务器，并且你可以手动部署到github pages上。

#### 用法
1. 拉取项目
<code>
git clone https://github.com/peyoot/docker-github-pages.git
</code>
2. 根据需要修改hexo及其主题的配置，要部署到github pages上，修改主题的配置文件_config.yml当中的deploy区块的代码库名称。
3. 修改build_and_run.sh，使用您自己的github帐号。
4. 如果您有多个站点要使用这个容器工具，请复制一份,并修改docker-compose.yml,给容器起个独一无二的名字，比如docker-my-site，然后把这个工具的目录名也重命名为相同名称。

第一次使用，运行
<code>
docker-compose up --force-recreate --build
</code>
这会编译该站点的容器，请静等一会儿，直到可以打开http://ip:4000，显示正常博客页面。 按ctrl+c退出。
下次只需运行：
<code>
 docker-compose up -d
</code>
站点容器就能准备好。您可以推送所有源码到github项目的master分支中。

5. 部署到github pages:
运行<code>
docker exec -it docker-github-pages sh
</code>
在容器中进入项目目录，运行<code>hexo deploy</code>来推送网站内容到gh-pages分支上，以完成部署。
