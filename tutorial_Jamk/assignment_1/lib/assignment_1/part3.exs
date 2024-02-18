user = IO.gets("Enter the Sentence: ")
trimmed_user = String.trim(user)
alphabet_length = String.length(trimmed_user)
IO.puts("Sentence: #{trimmed_user}")

# Reverse the sentence
reverse_sentence = String.reverse(trimmed_user)
IO.puts("Reverse Sentence: #{reverse_sentence}")

# Modify the text
modified_sentence = String.replace(trimmed_user, "foo", "bar")
IO.puts("Modified Text: #{modified_sentence}")
