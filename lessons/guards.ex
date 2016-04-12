defmodule Translator do
  # Elixir doesn’t like default arguments in multiple matching functions,
  # it can be confusing. To handle this we add a function head with
  # our default arguments:
  def greeting(names, language \\ "en")
  def greeting(names, language) when is_list(names) do
    names
    |> Enum.join(", ")
    |> greeting(language)
  end


  def greeting(name, language) when is_binary(name) do
    hi(language) <> name
  end


  defp hi("en"),    do: "Hello, "
  defp hi("de"),    do: "Hallo, "
  defp hi("pt_br"), do: "Olá, "
end


names = ["Julio", "Jessica"]

IO.puts("Guards example: Translator\n")

IO.puts("\nEnglish, using default parameter")
IO.puts(Translator.greeting(names))

IO.puts("\nGerman")
IO.puts(Translator.greeting(names, "de"))

IO.puts("\nPortuguese")
IO.puts(Translator.greeting(names, "pt_br"))

IO.puts("\nPassing name as string")
IO.puts(Translator.greeting("Julio"))
