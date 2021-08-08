FROM node:latest

ADD wh40k-point-tracker 40k
# RUN git clone https://github.com/TomWija/wh40k-point-tracker.git 40k
WORKDIR 40k
RUN npm install react-scripts && npm run build 
ENTRYPOINT npm run start