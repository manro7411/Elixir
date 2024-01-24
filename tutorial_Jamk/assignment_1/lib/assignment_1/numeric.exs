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

# Ask a line of text from the user
IO.puts "Enter a line of text:"
user_input = IO.gets("")

# Print the number of characters in the entered string
char_count = String.length(String.trim(user_input))
IO.puts "Number of characters: #{char_count}"

# Print the entered text in reverse
reversed_text = String.reverse(user_input)
IO.puts "Reversed text: #{reversed_text}"

# Replace the word "foo" with "bar" and print the resulted string
modified_text = String.replace(user_input, "foo", "bar")
IO.puts "Modified text: #{modified_text}"
