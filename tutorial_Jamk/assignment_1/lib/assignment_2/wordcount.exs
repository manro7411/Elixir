sentence = "99 bottles of beer on the wall"
words_count =
  String.split(sentence, ~r/\b\w+\b/)
  |> Enum.filter(&(&1 != ""))
  |> Enum.count()
IO.puts("Word count: #{words_count}")

defmodule PigLatinTranslator do
  def translate_word(word) do
    case word do
      "a" <> _ -> translate_vowel(word)
      "e" <> _ -> translate_vowel(word)
      "i" <> _ -> translate_vowel(word)
      "o" <> _ -> translate_vowel(word)
      "u" <> _ -> translate_vowel(word)
      "yt" <> _ -> translate_vowel(word)
      "xr" <> _ -> translate_vowel(word)
      "ch" <> _ -> translate_consonant_group(word)
      "qu" <> _ -> translate_consonant_group(word)
      "squ" <> _ -> translate_consonant_group(word)
      "th" <> _ -> translate_consonant_group(word)
      "thr" <> _ -> translate_consonant_group(word)
      "sch" <> _ -> translate_consonant_group(word)
      _ -> translate_consonant(word, String.at(word, 0))
    end
  end

  defp translate_vowel(word), do: word <> "ay"

  defp translate_consonant(word, consonant) do
    rest = String.slice(word, 1..-1)
    rest <> consonant <> "ay"
  end

  defp translate_consonant_group(word), do: String.slice(word, 3..-1) <> String.slice(word, 0..2) <> "ay"
end

phrase = "Pattern Matching with Elixir. Remember that equals sign is a match operator, not an assignment."
translated_phrase =
  phrase
  |> String.split(~r/\s+/)
  |> Enum.map(&PigLatinTranslator.translate_word/1)
  |> Enum.join(" ")

IO.puts(translated_phrase)
