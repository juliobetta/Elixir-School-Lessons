build:
	@docker build . > /dev/null

start: build
	@docker run -it --rm=true --name=elixir_school -v $(CURDIR):/scripts elixirschool_app /bin/sh
