FROM node:lts-alpine as builder

# ADD wh40k-point-tracker 40k
RUN apk update && apk add git
RUN git clone https://github.com/aaaronlucas/wh40k-point-tracker.git 40k
WORKDIR 40k
RUN npm install && npm run build 

FROM nginx:alpine
COPY --from=builder 40k/build /usr/share/nginx/html 