#cria uma imagem que a base e node
FROM node

#diretorio de trabalho no conteiner
WORKDIR /usr/src/app

#copia o package.json para o diretorio acima, (se fez o workdir pode colocar somente um ".")
COPY package.json .

#Instala os pacotes node modulos
RUN npm install

#Esta copiando todos os arquivos para o workdir
COPY . . 

#Expondo a porta
EXPOSE 3000

#Vai dar start na aplicação
CMD [ "node", "index.js" ]