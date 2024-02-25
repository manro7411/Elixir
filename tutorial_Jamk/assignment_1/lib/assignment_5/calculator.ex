defmodule Assignment5.Calculator do
  def calc(input) do
    case String.split(input, ~r{([-+*/])}) do
      [number1, operation, number2] ->
        number1 = String.to_integer(number1)
        number2 = String.to_integer(number2)

        case operation do
          "+" -> Assignment5.Math.addition(number1, number2)
          "-" -> Assignment5.Math.subtraction(number1, number2)
          "*" -> Assignment5.Math.multiplication(number1, number2)
          "/" -> Assignment5.Math.division(number1, number2)
        end

      _ ->
        IO.puts("Invalid input format.")
        :error
    end
  end
end
