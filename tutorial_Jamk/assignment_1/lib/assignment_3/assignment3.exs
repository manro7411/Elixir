IO.puts("----- Part 1 -----")
IO.puts("Insert the value: ")
number = String.trim(IO.gets(""))

defmodule Divisible do
  def divisible_number(num) do
    cond do
      rem(num, 3) == 0 -> IO.puts("Divisible by 3")
      rem(num, 5) == 0 -> IO.puts("Divisible by 5")
      rem(num, 7) == 0 -> IO.puts("Divisible by 7")
      true ->
        smallest_divisor = smallest_value(num, 2)
        IO.puts("Not divisible by 3, 5, or 7. Smallest divisor: #{smallest_divisor}")
    end
  end

  defp smallest_value(num, divisor) do
    if  rem(num, divisor) == 0 do
      divisor
    else
      smallest_value(num, divisor + 1)
    end
  end
end

Divisible.divisible_number(String.to_integer(number))

IO.puts("----- Part 2 -----")
annonymous = fn first,second when is_binary(first) and is_binary(second) -> "#{first}#{second}"
first ,second -> first+second end
result_string = annonymous.("firstname ","lastname")
result_sum = annonymous.(5,10)

IO.puts("Test with String : #{result_string}")
IO.puts("Test with Summation : #{result_sum}")
