FROM node:16-alpine

ENV PORT=3000

WORKDIR /home/ec2-user/frontend-app
COPY . /home/ec2-user/frontend-app
RUN npm run build
EXPOSE ${PORT}
CMD ["npm", "start"]


FROM nginx:1.22.1-alpine as prod-stage
COPY --from=build-stage /home/ec2-user/frontend-app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]