defmodule Assignment5.Math do
  def addition(a, b) do
    info("The values a and b are #{a} and #{b}")
    a + b
  end

  def subtraction(a, b) do
    info("The values a and b are #{a} and #{b}")
    a - b
  end

  def multiplication(a, b) do
    info("The values a and b are #{a} and #{b}")
    a * b
  end

  def division(a, b) do
    info("The values a and b are #{a} and #{b}")
    a / b
  end

  defp info(msg) do
    IO.puts(msg)
  end
end
