# Step 1: Anonymous function for concatenating two lists
concat_function = fn list1, list2 -> list1 ++ list2 end

# Step 2: Example lists
list_a = [1, 2, 3]
list_b = [4, 5, 6]

# Concatenate lists using the anonymous function
concatenated_list = concat_function.(list_a, list_b)

# Print the concatenated list
IO.inspect(concatenated_list)

# Step 3: Declare a tuple with atoms ok and fail
tuple_ok_fail = {:ok, :fail}

# Step 4: Add a new atom canceled to the tuple
tuple_combined = {tuple_ok_fail, :canceled}

# Print the combined tuple
IO.inspect(tuple_combined)
