#Create the user matt
ansible host1.prince-lab.com -i /root/ansible-lab/inv.ini -b -m user -a "name=matt"

#Create the demo directory in matt's  home directory
ansible host1.prince-lab.com -i /root/ansible-lab/inv.ini -b -m file -a "path=/home/matt/demo state=directory owner=matt group=matt mode=0755"

#Copy case.sh file to matt's home directory
ansible host1.prince-lab.com -i /root/ansible-lab/inv.ini -b -m copy -a "src=/root/ansible-lab/scripts/case.sh dest=/home/matt/case.sh mode=0644 owner=0755 owner=matt group=matt"

#Install httpd to the webservers group and start and enable the httpd service
ansible webservers -i /root/ansible-lab/inv.ini -b -m yum -a "name=httpd state=latest"

ansible webservers -i /root/ansible-lab/inv.ini -b -m service -a "name=httpd state=started enabled=yes"

#
