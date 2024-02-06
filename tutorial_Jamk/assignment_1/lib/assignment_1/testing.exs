product_function = fn a, b, c -> a * b * c end

IO.puts("Enter the first number:")
number1 = String.trim(IO.gets("")) |> String.to_integer()

IO.puts("Enter the second number:")
number2 = String.trim(IO.gets("")) |> String.to_integer()

IO.puts("Enter the third number:")
number3 = String.trim(IO.gets("")) |> String.to_integer()

result = product_function.(number1, number2, number3)

IO.puts("Product of the three numbers: #{result}")
