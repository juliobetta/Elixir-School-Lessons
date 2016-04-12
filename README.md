# Elixir School Lessons

Lessons about the Elixir programming language, from [elixirschool.com](http://elixirschool.com/).


### Executing the lessons:

If you want to skip the part where you have to install the Erlang and Elixir environment directly into your system,
you can use docker, just as I did!
It's worth saying that the docker image that I'm using is based on Alpine Linux, which is a lightweight Linux distribution
with only **16MB** !!!

To make our lives easier, there are shortcuts to create and use our container.

* `make build`  
Build the docker container. It will be executed every time we run the commands below. Just in case we change something in Dockerfile.

* `make iex`  
Open the Elixir Interactive Shell.

* `make bash`  
Open bash.

* `make execute file={script_name}.ex`  
Compile and execute an Elixir file inside the `lessons` folder.


That's it. Have fun!
