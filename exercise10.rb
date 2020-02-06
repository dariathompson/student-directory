def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the name
  name = gets.chop
  #while the name is not empty repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :february}
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    #get another name
    name = gets.chop
  end
  #return the array of the students
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(students)
  if students.count == 1
    puts "Overall, we have #{students.count} great student"
  else
    puts "Overall, we have #{students.count} great students"
  end
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
