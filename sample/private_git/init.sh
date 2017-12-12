if [ ! -f ./.env ]
then
	cp ./.env.example ./.env
fi



../unlinked/down.sh
../unlinked/clearall.sh
../unlinked/tagbuild.sh
../unlinked/rebuild.sh
../unlinked/up.sh
sudo docker exec -it publicgit_web_1 bash
