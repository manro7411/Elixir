defmodule Library do
  @books %{
    "978-0-13-449416-6" => "Clean Code: A Handbook of Agile Software Craftsmanship",
    "078-0-596-52068-7" => "Design Patterns: Elements of Reusable Object-Oriented Software",
    "978-0-321-33443-7" => "The Pragmatic Programmer: Your Journey to Mastery",
    "978-0-672-33870-1" => "Code Complete: A Practical Handbook of Software Construction",
    "978-0-13-708107-3" => "Refactoring: Improving the Design of Existing Code"
  }

  def start do
    loop(@books)
  end

  defp loop(states) do
    IO.puts("Enter (list, search ISBN, add ISBN,NAME, remove ISBN, quit): ")
    input = IO.gets("") |> String.trim()

    case String.split(input, " ") do
      ["list"] ->
        list_books(states)
        loop(states)

      ["search", isbn] ->
        search_book(states, isbn)
        loop(states)

      ["add", isbn, name] ->
        add_book(states, isbn, name)
        loop(states)

      ["remove", isbn] ->
        remove_book(states, isbn)
        loop(states)

      ["quit"] ->
        IO.puts("----- End Loop -----")

      _ ->
        IO.puts("Invalid command")
        loop(states)
    end
  end

  defp list_books(states) do
    IO.puts("Books in the library:")
    Enum.each(states, fn {isbn, name} -> IO.puts("ISBN: #{isbn}, Name: #{name}") end)
  end

  defp search_book(states, isbn) do
    case Map.get(states, isbn) do
      nil ->
        IO.puts("Book with ISBN #{isbn} not found.")
      name ->
        IO.puts("Book found: ISBN: #{isbn}, Name: #{name}")
    end
  end

  defp add_book(states, isbn, name) do
    updated_states = Map.put(states, isbn, name)
    IO.puts("Book added: ISBN: #{isbn}, Name: #{name}")
    loop(updated_states)
  end

  defp remove_book(states, isbn) do
    case Map.pop(states, isbn) do
      {name, updated_states} ->
        IO.puts("Book removed: ISBN: #{isbn}, Name: #{name}")
        loop(updated_states)
      _ ->
        IO.puts("Book with ISBN #{isbn} not found.")
        loop(states)
    end
  end
end

Library.start()
