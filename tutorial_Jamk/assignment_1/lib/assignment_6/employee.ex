defmodule Employee do
  defstruct [:first_name, :last_name, :id_number, :salary, :job]

  def new_employee, do: %Employee{id_number: 0, salary: 0.0, job: :none, first_name: "", last_name: ""}

  def new_employee(prev_id), do: %Employee{id_number: prev_id + 1, salary: 0.0, job: :none}

  def promote(%Employee{job: :none} = employee), do: %{employee | job: :coder, salary: 20000.00}
  def promote(%Employee{job: :coder} = employee), do: %{employee | job: :designer, salary: 4000.0}
  def promote(%Employee{job: :designer} = employee), do: %{employee | job: :manager, salary: 6000.0}
  def promote(%Employee{job: :manager} = employee), do: %{employee | job: :ceo, salary: 8000.0}
  def promote(employee), do: employee  # No change for :ceo and others

  def demote(%Employee{job: :none} = employee), do: %{employee | job: :none, salary: 0.0}
  def demote(%Employee{job: :coder} = employee), do: %{employee | job: :none, salary: 0.0}
  def demote(%Employee{job: :designer} = employee), do: %{employee | job: :coder, salary: 2000.0}
  def demote(%Employee{job: :manager} = employee), do: %{employee | job: :designer, salary: 4000.0}
  def demote(%Employee{job: :ceo} = employee), do: %{employee | job: :manager, salary: 6000.0}
  def demote(employee), do: employee  # No change for :none and others
end
