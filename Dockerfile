FROM node:18.20.0

WORKDIR /app

COPY package.*json .

RUN npm install 

COPY . .
RUN npm run build

#COPY . .

#EXPOSE 

CMD ["npm", "run", "dev"]
