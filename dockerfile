
#Nome da imagem base
FROM node:latest                    
#Nome do Autor(Comando descontinuado)
MAINTAINER Marcos Yamashita
#Copiando arquivos e jogando na pasta mapeada do container
COPY . /var/www
#Pasta padrão do projeto
WORKDIR /var/www
#Comando que será executado
RUN npm install
#Comando que executara assim que o container for buildado
ENTRYPOINT [ "npm", "start" ]
#Porta da Imagem
EXPOSE 3000


#após esses procedimentos e necessario buildar a imagem: "docker build -f dockerfile -t marcosy/node ."