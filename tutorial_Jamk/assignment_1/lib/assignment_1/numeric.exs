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
multiplication_function = fn a, b, c -> a * b * c end
IO.puts "Enter the first number:"
num1 = String.to_integer(String.trim(IO.gets("")))
IO.puts "Enter the second number:"
num2 = String.to_integer(String.trim(IO.gets("")))
IO.puts "Enter the third number:"
num3 = String.to_integer(String.trim(IO.gets("")))
