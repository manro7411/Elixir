# Define the Hello module with the world/1 function
# defmodule Hello do
#   def world(name) do
#     IO.puts("Hello #{name}")
#   end
# end

list = [1,2,3]
case Enum.at(list,2) do

  1 -> "this won't print"
  3 -> "3 is matched"

end
