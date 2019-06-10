FROM node:alpine

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
CMD ["npm","start"]