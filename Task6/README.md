#Task6 Jenkins
##Part1
1. For installing jenkins in container use ```docker pull jenkins/jenkins``` ```docker run -d <id image jenkins/jenkins>```
2. Login in to jankins by web browser using ip addres docker jenkins conteiner, and password from directory inside of container
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task6/1.png" width="200" />

3. Run docker conteiner with jenkins using ```--net=host``` for using network interface host vm ```docker run --privileged -d --net=host 4f0564040fa6```
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task6/2.png" width="200" />