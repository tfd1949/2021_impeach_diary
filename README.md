# Deploy Hexo with docker-compose and deploy to github pages

Based on node:14-alpine and pull all hexo and github pages project into the container. You only need to change docker-compose.yml and Dockerfile to your own github url.
And then change the github account in build_and_run.sh
Do what hexo need to do in your other hexo config and theme config
It will be your Hexo webserver and also you can manually deploy to your github pages.

## usage


### docker-compose

1. Modifiy `docker-compose.yml`. Replace with your own github URL in  `environment`;
2. Modify Dockerfile with your own github project as well 
3. Modify build_and_run.sh to use your own github account. If you want to deloy to github, this is useful
4. Do whatever config change that hexo and it's theme needs.
5. `docker-compose up --force-recreate --build`

This will build a hexo with your project source code into the docker container.
wait till you can access http://ip:4000

to exit, use ctrl+C

Next time ,you only need to run "docker-compose up -d" and container will be ready!

your can push whole path to github project's master branch

To deploy the site in github pages. just run

docker exec -it docker-github-pages sh

inside container, 
```
cd "your project name"
hexo deploy
```
This will deploy web to github project's gh-pages branch.


## Thanks
# original take reference from [docker-hexo](https://github.com/zeusro/docker-hexo)
# Use [ yun theme ] (https://github.com/YunYouJun/hexo-theme-yun)  by default

