FROM node:14.16.1

# 1. Создаем рабочую директорию
WORKDIR /usr/src/app

# 2. Копируем только package.json сначала (для оптимизации кэша)
COPY frontend/package*.json ./frontend/

# 3. Устанавливаем зависимости фронтенда
WORKDIR /usr/src/app/frontend
RUN npm install

# 4. Копируем ВСЕ файлы фронтенда
COPY frontend .

# 5. Копируем общие файлы бэкенда (из корня проекта)
COPY backend/common /usr/src/app/backend/common/

# 6. Создаем симлинк для #server
RUN ln -s /usr/src/app/backend/common /usr/src/app/frontend/node_modules/#server

# 7. Собираем приложение
RUN npm run build

# 8. Запускаем сервер
CMD ["npm", "start"]