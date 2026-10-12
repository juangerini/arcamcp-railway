FROM node:20-slim
WORKDIR /app
RUN npm install -g supergateway @yoryoboy/arcamcp
COPY start.sh .
RUN chmod +x start.sh
EXPOSE 8000
CMD ["./start.sh"]
