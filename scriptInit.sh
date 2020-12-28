#!/bin/bash


ssoo=('Centos7' 'Centos8' 'Ubuntu18' 'Ubuntu20')
for i in {0..3}
do
	# subredes
	docker network create -d bridge --subnet 172.25.$(($i + 1))0.0/24 ${ssoo[$i]}_net

	# imagen de docker

	docker build -t ${ssoo[$i],,}image ./${ssoo[$i],,}

	docker run -d -t --network=${ssoo[$i]}_net --name ${ssoo[$i]}_1 --ip=172.25.$(($i + 1))0.2 --rm ${ssoo[$i],,}image
	docker run -d -t --network=${ssoo[$i]}_net --name ${ssoo[$i]}_2 --ip=172.25.$(($i + 1))0.3 --rm ${ssoo[$i],,}image
done




