class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end

  # def salary
  #   @salary
  # end

  # def active
  #   @active
  # end

  def active=(new_active)
    @active = new_active
  end


  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee_1 = Employee.new({first_name: "Jim", last_name: "Jefferies", salary: 70000, active: true})
employee_2 = Employee.new(first_name: "Maria", last_name: "Bamford", salary: 80000, active: true)

# employee_1.print_info
# employee_2.print_info
# employee_2.give_annual_raise
# employee_2.print_info
# puts employee_2.first_name
# puts employee_2.active
puts employee_1.active
employee_1.active = false
puts employee_1.active