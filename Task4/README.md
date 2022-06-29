1. Install docker and run Hello world container by ```installdockerengine.sh``` script or by individual commands
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/1.png" width="200" />
2. Download httpd image from docker hub
3. Run httpd image container in background mode usind ```docker run <image id> -d``` 
4. Change index.htm page inside of httpd container  using ``` docker exec <container id> /bin/bash
5. Exit and commit your changed image using ```docker commit <container id> <name your new image>```
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/2.png" width="200" />