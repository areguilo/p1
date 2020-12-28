FROM 		centos:8
MAINTAINER 	areguilo

#create a new user called docker with docker password
RUN 	useradd -m docker 
RUN	echo "docker:docker" | chpasswd

# Install SSH and get bound to it.
RUN	yum install -y openssh-server
RUN	mkdir /var/run/sshd && chmod 0755 /var/run/sshd
RUN 	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN 	ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
RUN 	/usr/sbin/sshd
CMD	["/usr/sbin/sshd", "-D"]
