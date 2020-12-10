class Employee
    attr_accessor :name, :title, :salary, :boss
    
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def boss=(boss)
        boss.add_employee(self) unless boss.nil?

    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end
end

class Manager < Employee

    def initialize(name, title, salary, boss = nil)
        @employees = []
        super
    end

    def bonus(multiplier)
        self.total_subsalary * multiplier
    end

    def add_employee(employee)
        @employees << employee
        employee
    end

    def total_subsalary
        total = 0
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                total += employee.salary + employee.total_subsalary
            else
                total += employee.salary
            end
        end
        total
    end

end