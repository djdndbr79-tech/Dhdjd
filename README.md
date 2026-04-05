# KinoMir - Премиум Онлайн Кинотеатр

Telegram Web App для просмотра фильмов и сериалов.

## Деплой на Vercel (бесплатно)

1. Форкните репозиторий на GitHub
2. Зайдите на [vercel.com](https://vercel.com)
3. Нажмите "Import Project"
4. Выберите репозиторий
5. Нажмите "Deploy"

Получите постоянную ссылку вида `https://kinomir.vercel.app`

## Деплой на Render (бесплатно)

1. Зайдите на [render.com](https://render.com)
2. Создайте новый Web Service
3. Подключите GitHub репозиторий
4. Build Command: `npm run build && cp -r .next/static .next/standalone/.next/ && cp -r public .next/standalone/`
5. Start Command: `node .next/standalone/server.js`

## Локальный запуск

```bash
npm install
npm run build
npm start
```

## Функции

- 🔍 Поиск фильмов по частичным совпадениям
- 🎬 8 видео плееров
- ❤️ Избранное с localStorage
- ⚙️ Настройки качества и скорости
- 📱 Telegram Web App интеграция
- 🌙 Тёмная тема с неоновым свечением

## API

- `/api/movies` - Список фильмов по категориям
- `/api/search?q=query` - Поиск фильмов
- `/api/movie?id=ID&type=movie|tv` - Детали фильма

## Технологии

- Next.js 16
- React 19
- Tailwind CSS 4
- TMDB API
