sentence = "99 bottles of beer on the wall"

words_count =
  String.split(sentence, ~r/\b\w+\b/)
  |> Enum.filter(&(&1 != ""))
  |> Enum.count()

IO.puts("Word count: #{words_count}")


defmodule PigLatinTranslator do
  def translate_word(word) do
    cond do
      is_consonant(word) -> translate_consonant(word)
      is_vowel(word) -> translate_vowel(word)
      true -> word
    end
  end

  defp is_consonant(word) do
    Regex.match?(~r/^[^aeiouyxr]+/i, word)
  end

  defp translate_consonant(word) do
    {consonant, rest} = String.split_at(word, 1)
    rest <> consonant <> "ay"
  end

  defp is_vowel(word) do
    Regex.match?(~r/^(yt|xr|[aeiou])+/i, word)
  end

  defp translate_vowel(word) do
    word <> "ay"
  end
end

phrase = "Pattern Matching with Elixir. Remember that equals sign is a match operator, not an assignment."

translated_phrase =
  phrase
  |> String.split(~r/\s+/)
  |> Enum.map(&PigLatinTranslator.translate_word/1)
  |> Enum.join(" ")

IO.puts("Original phrase: #{phrase}")
IO.puts("Translated phrase: #{translated_phrase}")
