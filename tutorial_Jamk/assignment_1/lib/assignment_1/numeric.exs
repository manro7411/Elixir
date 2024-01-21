# Part 1
# Write an Elixir script that declares a variable and sets its value to 123.
# Print the value of the variable to the console.
# Add code that asks a text line from the user (use IO.gets).
# Add text <- You said that to the text that user entered.
# Print the combined text into the console.
# ---------------------------------------------------------------------------------

variable = 123
IO.puts "The numeric result : #{variable}"
IO.write("Input : ")
input = IO.gets("")
result = "The result is : #{String.trim(input)}"
IO.puts result

# Part 2
# Write an Elixir script that calculates the result of 154 divided by 78 and prints it to the console.
# Get the result of calculation (step 1) rounded to nearest integer and print it to console.
# Get the result of calculation (step 1) and print only the integer part of it into the console.
# ---------------------------------------------------------------------------------

operation = 154/78
IO.puts("The result : #{operation}")
IO.puts("Rouded number : #{round(operation)}")
IO.puts("Integer number : #{div(154,78)}")
