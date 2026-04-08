vi /etc/ansible/ansible.cfg
ansible all -m ping
ls
hostnamectl set-hostname prod
dnf update -y
python3 --version
dnf install python3-pip -y
pip3 install ansible
ansible --version
cd /etc/
ls
ansible localhost -m ping
sudo -i
ansible all -m yum -a "name=git state=present"
ansible all -m yum -a "name=maven state=present"
ansible all -m yum -a "name=httpd state=present"
ansible all -m service -a "name=httpd state=started"
ansible all -a "systemctl status httpd"
ansible all -m yum -a "name=httpd state=absent"
ansible all -a "systemctl status httpd"
ansible all -m yum -a "name=git state=absent"
ansible all -m yum -a "name=maven state=absent"
ls
ansible all -m user -a "name=shekhar state=present"
ansible all -a "cat /etc/passwd"
hostnamectl set-hostname ansible
sudo -i
mkdir -p /etc/ansible
ls
cd /etc/
ls
cd ansible/
ls
vi hosts
passwd root
vi /etc/ssh/sshd_config
restart sshd
systemctl restsrt sshd
systemctl restart sshd
systemctl status sshd
ssh-keygen
ssh-copy-id root@172.31.15.245
ssh-copy-id root@172.31.2.168
ansible all -m ping
ls
vi var.yml
ansible-playbook var.yml 
sed -i 's/present/absent/g' var.yml 
ansible-playbook var.yml 
cat var.yml 
vi dynamicvar.yml
ansible-playbook dynamicvar.yml 
ansible-playbook dynamicvar.yml --extra-vars "a=git b=maven"
vi dynamicvar.yml
ansible-playbook dynamicvar.yml --extra-vars "a=git b=maven"
sed -i 's/present/absent/g' dynamicvar.yml 
ansible-playbook dynamicvar.yml --extra-vars "a=git b=maven"
vi dynamicvar.yml 
ansible-playbook dynamicvar.yml --extra-vars "a=git,maven"
git -v
git --version
ansible all -a "mvn --version"
vi loops.yml
ansible-playbook loops.yml 
vi loops.yml 
ansible-playbook loops.yml 
vi loops.yml 
ansible-playbook loops.yml 
sed -i 's/present/absent/g' loops.yml 
ansible-playbook loops.yml 
