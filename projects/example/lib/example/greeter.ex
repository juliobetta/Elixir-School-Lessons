defmodule Example.Greeter do
  @prefix Application.get_env(:example, __MODULE__)[:prefix]

  @moduledoc """
  ...
  """

  @doc """
  Prints a hello message

  ## Parameters

    - name: String that represents the name of the person.

  ## Examples

      iex> Example.Greeter.hello("Sean")
      "Hello, Sean"

      iex> Example.Greeter.hello("pete")
      "Hello, pete"

  """
  @spec hello(String.t) :: String.t
  def hello(name \\ "") do
    @prefix <> name
  end
end
