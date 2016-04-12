defmodule MySigils do
  # get full github page
  def sigil_g(repo, []), do: "https://github.com/#{repo}"
end


defmodule Example do
  import MySigils

  def main do
    IO.puts("Use a custom sigil ~g to print Github address given a repo")
    IO.puts(~g{juliobetta/elixir-school-lessons})
  end
end


Example.main
