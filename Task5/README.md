# Task5 Ansible
## Part1
1. Deploy 3 virtual machines by terraform
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task5/1.png" width="200" />

2. Install Ansible ```sudo pip install ansible``` ```sudo apt install ansible``` on one fo virtual machine
3. Before installing verify that python is installed

## Part2
4. Copy ```ssh.pem``` 
5. Create ```mkdir ansible``` and ```hosts.txt```
6. Write in ```ansible.txt``` parametrs for our vm
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task5/3.png" width="200" />
7. Ping-pong to other two machine
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task5/2.png" width="200" />

 ## Part3
8. Configure ```ansible.cfg```
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task5/7.png" width="200" />

9. Configure playbook ```yml``` file for installing docker
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task5/6.png" width="200" />

10. Run ```sudo ansible-playbook docker.yml``` 

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task5/5.png" width="200" />

11. Check docker on each virtual machine

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task5/8.png" width="200" />



