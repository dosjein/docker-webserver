if [ ! -f ./.env ]
then
	cp ./.env.example ./.env
fi

../unlinked/down.sh
../unlinked/up.sh
