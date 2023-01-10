docker image build -t login .
docker run -p 3306:3306 --name login -t -d login 
