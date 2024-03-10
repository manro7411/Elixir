defmodule Employee do
  @counter 0

  defstruct first_name: "", last_name: "", id_number: nil, salary: 0, job: :none

  def new_employee(attrs) do
    id = get_next_id()
    %Employee{attrs | id_number: id}
  end

  defp get_next_id do
    @counter + 1
  end

  def promote(employee) do
    %Employee{employee | job: next_job(employee.job), salary: next_salary(employee.salary)}
  end

  def demote(employee) do
    %Employee{employee | job: :none, salary: 0}
  end

  defp next_job(:none), do: :coder
  defp next_job(:coder), do: :designer
  defp next_job(:designer), do: :manager
  defp next_job(:manager), do: :ceo
  defp next_job(:ceo), do: :ceo

  defp next_salary(salary) do
    salary + 2000
  end
end

# Execution
nine_trai = Employee.new_employee(%{first_name: "Ratchanon", last_name: "Traitiprat"})
IO.inspect nine_trai

promoted_nine = Employee.promote(nine_trai)
IO.inspect promoted_nine

demoted_nine = Employee.demote(promoted_nine)
IO.inspect demoted_nine
