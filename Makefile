build:
	@docker build . > /dev/null

start: build
	@docker run -it --rm=true --name=elixir_school -v ~/projects/elixir-school:/scripts elixirschool_app /bin/sh
