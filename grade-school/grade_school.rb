class School

  def initialize
    @grades = {}
    @existing_names = []
  end

  def add(name, grade)
    return false if @existing_names.include?(name)
    @existing_names << name
    @grades[grade] ? @grades[grade].append(name) : @grades[grade] = [name]
    true
  end

  def roster
    @grades.sort.map { |grade| grade[1].sort }.flatten
  end

  def grade(number)
    @grades[number] ? @grades[number].sort : []
  end
end