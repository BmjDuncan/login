docker image build -t login .
docker run -p 3306:3306 -p 80:80 --name login -d login 
