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
user = IO.gets("Enter the Sentences : ")
alphabet =  String.length(String.trim(user))
IO.puts("Sentences : #{alphabet}");
reverse_alphabet = String.reverse(alphabet);
IO.puts("Reverse Sentence #{reverse_alphabet}")
modified = String.replace(user,"foo",'bar')
IO.puts("Text is modified : {modified}")

#part4
