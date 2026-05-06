#!/bin/bash

# Создание виртуального окружения
python -m venv .venv
source .venv/bin/activate

# Установка зависимостей
pip install --upgrade pip
pip install -r requirements.txt

# Сбор статических файлов
python manage.py collectstatic --noinput

# Применение миграций
python manage.py migrate    