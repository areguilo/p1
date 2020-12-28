FROM 		ubuntu:18.04
MAINTAINER 	areguilo

#create a new user called docker with docker password
RUN 	useradd -m docker 
RUN	echo "docker:docker" | chpasswd

# Install SSH and get bound to it.
RUN	apt update
RUN	apt -y install openssh-server
CMD	["/usr/sbin/sshd", "-D"]
RUN	mkdir /var/run/sshd && chmod 0755 /var/run/sshd
