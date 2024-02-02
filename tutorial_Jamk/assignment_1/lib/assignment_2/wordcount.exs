sentence = "99 bottles of beer on the wall"
words_count =
  String.split(sentence, ~r/\b\w+\b/)
  |> Enum.filter(&(&1 != ""))
  |> Enum.count()
IO.puts("Word count: #{words_count}")

defmodule PigLatinTranslator do
  def translate_word("ch" <> rest), do: rest <> "chay"
  def translate_word("qu" <> rest), do: rest <> "quay"
  def translate_word("squ" <> rest), do: rest <> "squay"
  def translate_word("th" <> rest), do: rest <> "thay"
  def translate_word("thr" <> rest), do: rest <> "thray"
  def translate_word("sch" <> rest), do: rest <> "schay"
  def translate_word("yt" <> rest), do: rest <> "ytay"
  def translate_word("xr" <> rest), do: rest <> "xray"
  def translate_word(word), do: word <> "ay"
end
