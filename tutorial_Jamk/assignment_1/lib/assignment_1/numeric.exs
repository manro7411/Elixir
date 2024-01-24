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
IO.puts("Rounded number : #{round(operation)}")
IO.puts("Integer number : #{div(154,78)}")

# Part 3
user = IO.gets("Enter the Sentences : ")
alphabet = String.length(String.trim(user))
IO.puts("Sentences : #{alphabet}")
reverse_alphabet = String.reverse(Integer.to_string(alphabet))
IO.puts("Reverse Sentence : #{reverse_alphabet}")
modified = String.replace(user, "foo", "bar")
IO.puts("Text is modified : #{modified}")

# Part 4
# multiplication = fn a, b, c -> a * b * c end
# result_product = multiplication.(2, 3, 4)
# IO.puts("Product of the three numbers: #{result_product}")

# 1. Anonymous function for calculating the product of three values
multiplication_function = fn a, b, c -> a * b * c end

# 2. Ask three numbers from the user
IO.puts "Enter the first number:"
num1 = String.to_integer(String.trim(IO.gets("")))

IO.puts "Enter the second number:"
num2 = String.to_integer(String.trim(IO.gets("")))

IO.puts "Enter the third number:"
num3 = String.to_integer(String.trim(IO.gets("")))

# 3. Call the product function and print the result
result_product = multiplication_function.(num1, num2, num3)
IO.puts "Product of the three numbers: #{result_product}"

# 4. Anonymous function for concatenating two lists
concat_function = fn list1, list2 -> list1 ++ list2 end

# 5. Call the list concat function and print the result
list1 = [1, 2, 3]
list2 = [4, 5, 6]
result_concat = concat_function.(list1, list2)
IO.inspect "Concatenated list: #{result_concat}"

# 6. Declare a tuple with atoms ok and fail, add a new atom canceled, and print the combined tuple
status_tuple = {:ok, :fail}
status_tuple_with_canceled = Tuple.put_elem(status_tuple, 2, :canceled)
IO.inspect "Combined tuple: #{status_tuple_with_canceled}"
