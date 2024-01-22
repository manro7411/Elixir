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

# Example usage
result_tuple = {:ok, "Hello, World!"}
ResultPrinter.print_result(result_tuple)
