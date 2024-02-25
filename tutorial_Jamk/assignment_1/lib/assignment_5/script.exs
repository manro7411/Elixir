defmodule MyMain do
  def start do
    loop()
  end

  def loop do
    IO.puts("Enter the values : ")
    input = IO.gets(:stdio, "") |> String.trim()

    case Assignment5.Calculator.calc(input) do
      :error ->
        IO.puts("Exiting...")
      result ->
        IO.puts("Result: #{result}")
        loop()
    end
  end
end

MyMain.start()
