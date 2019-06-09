FROM node:alpine
ENV NODE_ENV production
RUN apk add --no-cache git bash \ 
npm install https://github.com/LLK/scratch-gui.git
CMD ["npm","start"]