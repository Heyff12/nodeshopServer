FROM node:8.11.3
RUN mkdir -p /home/Service
WORKDIR /home/Service    
COPY . /home/Service 
# COPY package*.json /home/Service/
RUN  npm install --production
EXPOSE 3003
CMD ["npm","product-start"]