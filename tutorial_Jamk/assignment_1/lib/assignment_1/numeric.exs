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
