Code.eval_file("employee.ex",__DIR__)
john_doe = Employee.new_employee(%{first_name: "John", last_name: "Doe"})
IO.inspect john_doe

promoted_john = Employee.promote(john_doe)
IO.inspect promoted_john

demoted_john = Employee.demote(promoted_john)
IO.inspect demoted_john
