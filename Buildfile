git add *.py
git add Dockerfile
git add Buildfile
git commit -m "From Buildfile"
git push
docker rmi tfrecomm
docker build -t tfrecomm .
docker tag tfrecomm acobley/tfrecomm
docker push acobley/tfrecomm
docker rm runtfrecomm
docker run --name runtfrecomm -p 81:5000 -i -t acobley/tfrecomm bash
