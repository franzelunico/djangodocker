yum install -y docker
service docker start
usermod -a -G docker ec2-user
pip install docker-compose
