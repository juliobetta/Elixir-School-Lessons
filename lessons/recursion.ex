defmodule Length do
  def of([]),    do: 0
  def of([_|t]), do: 1 + of(t)
end

list = [1,4,6,8,4,89]

IO.puts("Get list length using recursion: [#{list |> Enum.join(", ")}]")
IO.puts(Length.of(list)) # 6
