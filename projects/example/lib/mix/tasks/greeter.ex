defmodule Mix.Tasks.Greeter do
  @shortdoc "Greets an arbitrary name"

  @moduledoc """
  Takes a -n options which specifies which name to greet.

      mix greeter -n juliobetta
  """

  use Mix.Task

  def run(args) do
    {opts, _, _} = OptionParser.parse(args, aliases: [n: :name])

    IO.puts Example.Greeter.hello(opts[:name])
  end
end
