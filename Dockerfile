FROM node:alpine
ENV NODE_ENV production
RUN npm install https://github.com/LLK/scratch-gui.git
CMD ["npm","start"]