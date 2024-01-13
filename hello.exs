# There are 2 type of Elixir --> .exs is script file -->.ex is compile file
# create def modules
defmodule Hello do
  def world(name) do
    IO.puts("Hello #{name}")

  end
end

Hello.world()
