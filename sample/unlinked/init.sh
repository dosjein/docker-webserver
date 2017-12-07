if [ ! -f ./.env ]
then
	cp ./.env.example ./.env
fi



./down.sh
./clearall.sh
./tagbuild.sh
./rebuild.sh
./up.sh
sudo docker exec -it unlinked_web_1 bash
