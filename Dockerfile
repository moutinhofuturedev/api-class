FROM node:20-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]

# Comandos para criar uma imagem e em sequência executar o container:
# docker build -t <nome da imagem> .

# Listar imagens criadas:
# docker image ls <nome da imagem>

# Criar e executar o container criado a partir da imagem:
# docker run -p 3000:3000 <nome da imagem>

# Listar containers em execucão:
# docker container ls ou docker ps

# Parar o container rodando:
# docker stop <id do container>

# Rodar o container novamente:
# docker start <id do container>