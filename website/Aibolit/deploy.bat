cd ..\..

echo Глобальная настйрока переменных, достаточно выполнить 1 раз

git config --global user.name NEFUmasters
git config --global user.email study.svfu@gmail.com

echo Добавим трекинг всех новых файлов
git add -A

git commit -a -m "comething new"

echo Применение коммита, мерж локальных измнений в удаленный репозиторий

git push origin master

echo Объединяем все изменения из удаленного репозитория с локальной версией

git pull origin master

