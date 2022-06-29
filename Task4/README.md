1. Install docker and run Hello world container by ```installdockerengine.sh``` script or by individual commands
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/1.png" width="200" />

2. Download httpd image from docker hub
3. Run httpd image container in background mode usind ```docker run <image id> -d``` 
4. Change index.htm page inside of httpd container  using ```docker exec <container id> /bin/bash```
5. Exit and commit your changed image using ```docker commit <container id> <name your new image>```

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/2.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/3.png" width="200" />

6. Create Dockerfile with syntax where installing nginx, apache2 
7. Inside of container install vim and change port for apache2 or nginx (i have changed port.conf apache2 by 81 value)
8. Config default web page for nginx or apache (i have configured default nginx file)
9. Start two webservers verify that two servers is working
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/5.png" width="200" />

10. Commit your new image 
11. Write all of the previos step in ```dockerfile```
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/6.png" width="200" />
12. Verify that all works