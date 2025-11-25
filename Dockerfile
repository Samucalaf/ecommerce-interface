# Imagem base (Node 20 – compatível com Vite)
FROM node:20

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de config do projeto
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia todo o código para dentro do container
COPY . .

# Expõe a porta que o Vite usa
EXPOSE 5173

# Comando para iniciar o servidor de desenvolvimento
CMD ["npm", "run", "dev", "--", "--host"]
