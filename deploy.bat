@REM #!/usr/bin/env sh

@REM # abort on errors
@REM @REM set -e

@REM # build
npm run build

@REM # navigate into the build output directory
cd dist

@REM # place .nojekyll to bypass Jekyll processing
echo '' > .nojekyll

@REM # if you are deploying to a custom domain
@REM # echo 'www.example.com' > CNAME

git init
git checkout -B master
git add -A
git commit -m 'deploy'

@REM # if you are deploying to https://<USERNAME>.github.io
@REM # git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

@REM # if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/alexlipovka/ol-test.git master:gh-pages

cd ..