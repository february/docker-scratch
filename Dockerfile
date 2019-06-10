FROM node:alpine
# ENV NODE_ENV production
RUN apk add --no-cache git bash \ 
    && git clone https://github.com/LLK/scratch-gui.git \
    && cd scratch-gui \
    && npm install && npm run build \
    && sed -ri -e "s/8601/80,\n\tdisableHostCheck: true/" ./webpack.config.js
    
 ##    && npm install react \
 ##    && npm install react-dom@16.2.1 \ 
##     && npm install core-js@3 \ 
 ##    && npm install eslint --save-dev \ 
  ##   && npm install react-intl-redux react react-intl react-redux redux --save \ 
  ##   && npm install react-responsive --save \ 
    
    
##    && npm init -f \ 

##    && git clone https://github.com/LLK/scratch-gui.git \
 ##   && npm install https://github.com/LLK/scratch-gui.git \ ##
##    && npm install
EXPOSE 80
CMD ["npm","start"]