defmodule User do
  defstruct firstname: "", lastname: "", id_number: nil, salary: 0, job: :none
  def new_user(attrs) do
    %User{attrs | id_number: get_next_id()}
  end
  defp get_next_id do
    id_number + 1
  end
end
