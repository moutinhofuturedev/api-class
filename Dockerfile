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

# Criar/nomear/associar-volume/conectar-rede e executar o container criado a partir da imagem:
# docker run --name nome_container -volume <nome do volume>:<local do volume> --network=minharede -p 3000:3000 -d <nome da imagem>

# Listar containers em execucão:
# docker container ls ou docker ps

# Parar o container rodando:
# docker stop <id do container>

# Rodar o container novamente:
# docker start <id do container>

# Sobre Docker Volumes:
  # Volumes sao arquivos locais que o container pode acessar e manipular. Porém, existe casos de usos e um container nem sempre precisar ter um volume.
  # Para criar um volume, basta executar o comando: docker volume create <nome do volume>