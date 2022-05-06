export UID = $(id -u)
export GID = $(id -g)

install:
	docker-compose run --rm --no-deps phoenix bash -ci 'cd assets && npm install autoprefixer postcss postcss-import postcss-cli tailwindcss --save-dev && npm install alpinejs'
