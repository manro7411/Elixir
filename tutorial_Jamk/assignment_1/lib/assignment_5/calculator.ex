defmodule Assignment5.Calculator do
  def cal(inp) do
    case String.split(inp,~r{([-+*/])}) do
       [number1,operation,number2]->
        number1 = String.to_integer(number1)
        number2 = String.to_integer(number2)
        case operation do

          "+" -> Math.addition(number1,number2)
          "-" -> Math.subtraction(number1,number2)
          "*" -> Math.multiplication(number1,number2)
          "/" -> Math.division(number1,number2)

        end
    end

  end

end
