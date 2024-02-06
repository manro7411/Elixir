IO.puts("----- Part 2 -----")
annonymous = fn first,second when is_binary(first) and is_binary(second) -> "#{first}#{second}"
first ,second -> first+second end
result_string = annonymous.("firstname ","lastname")
result_sum = annonymous.(5,10)

IO.puts("Test with String : #{result_string}")
IO.puts("Test with Summation : #{result_sum}")
