FROM node:alpine
ENV NODE_ENV production
RUN apk add --no-cache git bash \ 
    && git clone https://github.com/LLK/scratch-gui.git \
    && cd scratch-gui \
    && npm install
EXPOSE 8601
CMD ["npm","start"]