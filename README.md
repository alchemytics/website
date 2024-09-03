# Alchemytics - Website

В данном репозитории собран код основного вебсайта

# Содержание

1. [Технический стек](#технический-стек)
2. [Релизы](#релизы)

# Технический стек

Для разработки текущей актуальной версии использовались следующие технологии:

-   [Astro](https://astro.build/) - основной фреймворк для разработки сайта
-   [Tailwind CSS](https://tailwindcss.com/) - фреймворк для управления CSS на сайте
-   [Docker](https://www.docker.com/) - технология для контейнеризации
-   [Helm](https://helm.sh/) - для деплоя и управления релизами

# Релизы

TBD

# Скрипты

## Деплой

```
helm --kubeconfig <PATH TO CONFIG> install --set env=<DEV or PROD> --set appVersion=<VERSION> alchemytics-website-release ./k8s/alchemytics-website
```
