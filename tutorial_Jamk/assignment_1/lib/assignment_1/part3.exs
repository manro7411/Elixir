user = IO.gets("Enter the Sentences : ")
alphabet =  String.length(String.trim(user))
IO.puts("Sentences : #{alphabet}");
reverse_alphabet = String.reverse(alphabet);
IO.puts("Reverse Sentence #{reverse_alphabet}")
modified = String.replace(user,"foo",'bar')
IO.puts("Text is modified : {modified}")
