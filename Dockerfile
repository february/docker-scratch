FROM node:alpine
LABEL maintainer="zhang.hao@live.com"  
LABEL version="1.0"
LABEL description="This is scratch3 gui image from official repository."
ENV NODE_ENV development
RUN apk add --no-cache git bash \ 
    && mkdir -p /usr/src/app \
    && cd /usr/src/app \
    && git clone https://github.com/LLK/scratch-gui.git \
    && cd scratch-gui \
    && rm -rf .git \
    && npm install && npm run build \
    && sed -ri -e "s/8601/80,\n\tdisableHostCheck: true/" ./webpack.config.js
WORKDIR /usr/src/app/scratch-gui
EXPOSE 80
ENV NODE_ENV production
CMD ["npm","start"]