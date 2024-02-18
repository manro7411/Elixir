defmodule CodeColor do
  @colors %{
    :red => "#FF0000",
    :green => "#00FF00",
    :blue => "#0000FF",
    :yellow => "#FFFF00",
    :purple => "#800080",
    :orange => "#FFA500",
    :pink => "#FFC0CB",
    :brown => "#A52A2A",
    :violet => "#EE82EE",
    :skyblue => "#87CEEB"
  }
  def print_colors do
    IO.puts("Color Map:")
    Enum.each(@colors, fn {name, value} ->
      IO.puts("#{name}: #{value}")
    end)
  end
  def start do
    IO.puts("Start color converting system")
    print_colors()
    loop()
  end
  defp loop do
    IO.puts("Enter HTML Code or Color Name (type 'exit' to quit): ")
    input = IO.gets("") |> String.trim()

    case String.starts_with?(input, "#") do
      true ->
        color_name = find_color_name(input)
        print_result(color_name)
        loop()
      false ->
        color_html = find_color_html(input)
        print_result(color_html)
        loop()
    end
  end
  defp find_color_name(html_value) do
    Enum.find_value(@colors, fn {_, value} -> value == html_value end)
  end

  # Function to find HTML value based on color name
  defp find_color_html(name) do
    Map.get(@colors, String.to_atom(name))
  end

  # Function to print the result
  defp print_result(nil) do
    IO.puts("Color not found. Please try again.")
  end

  defp print_result(result) do
    IO.puts("Result: #{result}")
  end
end

# Start the color converting system
CodeColor.start()
