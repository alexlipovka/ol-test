@REM Переход в папку результирущей страницы
cd ./dist

@REM создаем файл .nojekyll для обхода интерпретатора Jekyll Git
echo '' > .nojekyll

git init
git checkout -B master
git add -A
git commit -m "latest deploy"

git push -f https://github.com/alexlipovka/ol-test.git master:gh-pages

@REM возвращаеемся в рабочую папку
cd ..