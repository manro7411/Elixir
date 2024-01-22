
#Exercise_1

x = 42
[x,1,2,3] = [x,1,2,3]
IO.puts("The result equals : #{x}")

# Exercise_2
list = [1, 2, 3, 4]
[head | tail] = list
IO.inspect(list)
IO.puts("The first Element : #{head}")
IO.puts("The last Element : #{tail}")
IO.puts(tail)

#exercise 3
defmodule ResultPrinter do
  def print_result(result_tuple) do
    case result_tuple do
      {:ok, value} ->
        IO.puts "The value is: #{value}"
      _ ->
        IO.puts "The tuple does not match."
    end
  end
end
result_tuple = {:ok, "Ratchanon is gone"}
ResultPrinter.print_result(result_tuple)


#exercise 4
# IO.gets("Insert the value : ")
defmodule NumberToWord do
  def convert(0), do: "zero"
  def convert(1), do: "one"
  def convert(_), do: "other"
end
# Example usage:
IO.puts NumberToWord.convert(0)
IO.puts NumberToWord.convert(1)
IO.puts NumberToWord.convert(42)
#exercise 5

#exercise 6 --> atom matching
# return :ok, :error, :unknown
defmodule Atomize do
  def my_map do
    %{
      :ok => "The coding part is OK",
      :error => "There is some error",
      :unknown => "Unknown value"
    }
  end
end

# Retrieve and print the map from Atomize module
result_map = Atomize.my_map()
IO.inspect(result_map)

#exercise 7

#exercise 8
