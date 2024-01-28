# Part 1
variable = 123
IO.puts "The numeric result : #{variable}"
IO.write("Input : ")
input = IO.gets("")
result = "The result is : #{String.trim(input)}"
IO.puts result

# Part 2
operation = 154/78
IO.puts("The result : #{operation}")
IO.puts("Rouded number : #{round(operation)}")
IO.puts("Integer number : #{div(154,78)}")

#part3
# user = IO.gets("Enter the Sentences : ")
# alphabet =  String.length(String.trim(user))
# IO.puts("Sentences : #{alphabet}");
# reverse_alphabet = String.reverse(alphabet);
# IO.puts("Reverse Sentence #{reverse_alphabet}")
# modified = String.replace(user,"foo",'bar')
# IO.puts("Text is modified : {modified}")

#part4
multiplication_function = fn a, b, c -> a * b * c end
IO.puts("Enter the first number:")
number1 = String.trim(IO.gets("")) |> String.to_integer()
IO.puts("Enter the second number:")
number2 = String.trim(IO.gets("")) |> String.to_integer()
IO.puts("Enter the third number:")
number3 = String.trim(IO.gets("")) |> String.to_integer()
result_product = multiplication_function.(number1,number2,number3)
IO.puts "Product of the three numbers: #{result_product}"

# concat_function = fn list1, list2 -> list1 ++ list2 end
# list1 = [1, 2, 3]
# list2 = [4, 5, 6]
# result_concat = concat_function.(list1, list2)
# IO.inspect "Concatenated list: #{result_concat}"
# status_tuple = {:ok, :fail}
# status_tuple_with_canceled = Tuple.put_elem(status_tuple, 2, :canceled)
# IO.inspect "Combined tuple: #{status_tuple_with_canceled}"
