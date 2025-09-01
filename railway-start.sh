#!/bin/bash

# Instalar dependencias de Node.js
npm install

# Construir assets de Vue
npm run build

# Generar clave de aplicación si no existe
php artisan key:generate --force

# Ejecutar migraciones
php artisan migrate --force

# Limpiar caché
php artisan config:clear
php artisan cache:clear
php artisan view:clear
php artisan route:clear

# Iniciar servidor
php artisan serve --host=0.0.0.0 --port=$PORT
