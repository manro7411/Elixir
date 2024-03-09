defmodule Employee do
  @counter 0

  defstruct first_name: "", last_name: "", id_number: nil, salary: 0, job: :none

  def new_employee(inp) do
    %Employee{inp | id_number: get_next_id()}
  end

  defp get_next_id do
    id = @counter + 1
    @counter = id
    id
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
