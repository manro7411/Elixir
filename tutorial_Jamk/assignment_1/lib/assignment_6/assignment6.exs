defmodule Employee do
  use GenServer

  defmodule Job do
    defstruct none: 0, coder: 2000, designer: 4000, manager: 6000, ceo: 8000
  end

  defstruct [:first_name, :last_name, :id_number, :salary, :job]

  def start_link(_) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init(_) do
    {:ok, %{counter: 0, job: :none, salary: 0}}
  end

  def new_employee(attrs) do
    id = get_next_id()
    %Employee{attrs | id_number: id}
  end

  defp get_next_id do
    GenServer.call(__MODULE__, {:get_next_id})
  end

  def promote(employee) do
    %Employee{employee | job: next_job(employee.job), salary: next_salary(employee.salary)}
  end

  def demote(employee) do
    %Employee{employee | job: :none, salary: 0}
  end

  def handle_call({:get_next_id}, _from, state) do
    id = state.counter + 1
    {:reply, id, %{state | counter: id}}
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
{:ok, _} = Employee.start_link([])

nine_trai = Employee.new_employee(%{first_name: "Ratchanon", last_name: "Traitiprat"})
IO.inspect nine_trai

promoted_nine = Employee.promote(nine_trai)
IO.inspect promoted_nine

demoted_nine = Employee.demote(promoted_nine)
IO.inspect demoted_nine
