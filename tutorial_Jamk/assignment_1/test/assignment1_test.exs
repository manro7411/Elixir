defmodule Assignment1Test do
  use ExUnit.Case
  doctest Assignment1

  test "greets the world" do
    assert Assignment1.hello() == :world
  end
end
