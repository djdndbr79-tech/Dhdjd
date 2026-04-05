#!/bin/bash
# KinoMir Deployment Script
# Запустите на VPS для автоматической установки

echo "🚀 Установка KinoMir..."

# Обновление системы
apt update && apt upgrade -y

# Установка Node.js
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt install -y nodejs

# Установка PM2 (менеджер процессов)
npm install -g pm2

# Клонирование/загрузка проекта (замените на ваш репозиторий)
# git clone https://github.com/YOUR_USERNAME/kinomir.git
# cd kinomir

# Установка зависимостей
npm install

# Сборка
npm run build

# Создание standalone директории
cp -r .next/static .next/standalone/.next/
cp -r public .next/standalone/

# Запуск через PM2 (автозапуск при перезагрузке)
cd .next/standalone
pm2 start server.js --name kinomir
pm2 save
pm2 startup

echo "✅ KinoMir запущен на http://YOUR_IP:3000"
echo "📝 Для SSL сертификата установите nginx + certbot"
