# Usa una imagen base de Node.js versión 22
FROM node:22

# Instalar dependencias del sistema, incluyendo espeak-ng
RUN apt-get update && \
    apt-get install -y espeak-ng

# Crear un directorio de trabajo para la aplicación
WORKDIR /app

# Copiar los archivos de tu aplicación al contenedor
COPY . .

# Instalar las dependencias de Node.js
RUN npm install

# Dar permisos de ejecución al archivo piper (si es necesario)
RUN chmod +x ./piper

# Comando para ejecutar el servidor (ajusta según sea necesario)
CMD ["npm", "start"]
