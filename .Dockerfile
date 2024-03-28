#node.js의 18버전을  베이스 이미지로 가지고온다는 뜻
FROM node:18  
##RUN command는 이미지 빌드할때 var 밑에 app폴더를 생성
RUN mkdir -p /var/app
# 실행하는 위치를 생성한 폴더로 줌.(app)
WORKDIR /var/app
COPY . .
RUN npm install 
RUN npm run build
EXPOSE 3000
CMD ["node", "dist/main.js"]