FROM node:alpine
ENV NODE_ENV production
RUN apk add --no-cache git bash \ 
    && npm init -f \ 
    && npm install react \
    && npm install react-dom@16.2.1 \ 
    && npm install core-js@3 \ 
    && npm install eslint --save-dev \ 
    && npm install react-intl-redux react react-intl react-redux redux --save \ 
    && npm install react-responsive --save \ 
    && git clone https://github.com/LLK/scratch-gui.git \
    && cd scratch-gui \
    && npm install 
    
##    && git clone https://github.com/LLK/scratch-gui.git \
 ##   && npm install https://github.com/LLK/scratch-gui.git \ ##
##    && npm install
EXPOSE 8601
CMD ["npm","start"]