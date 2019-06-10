FROM node:alpine
ENV NODE_ENV production
RUN apk add --no-cache git bash \ 
    && npm init -f \ 
    && npm install react \
    && npm install react-dom 
##    && npm install https://github.com/LLK/scratch-gui.git
##    && git clone https://github.com/LLK/scratch-gui.git \
##    && cd scratch-gui \
##    && npm install
EXPOSE 8601
## CMD ["npm","start"]