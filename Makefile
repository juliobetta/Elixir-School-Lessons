run_container=docker run -it --rm=true --name=elixir_school -v $(CURDIR):/scripts elixirschool_app

build:
	@docker build -t elixirschool_app . > /dev/null

bash: build
	@$(run_container) /bin/sh

iex: build
	@$(run_container) iex

exec: build
	@$(run_container) elixir /scripts/lessons/$(file)
