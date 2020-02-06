def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the name
  name = gets.chomp
  puts "Please enter the cohort"
  cohort = gets.chomp
  #while the name is not empty repeat this code
  while !name.empty? do
    #add the student hash to the array
    cohort = "February" if cohort.empty?
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    #get another name
    puts "Please enter the names of the students"
    name = gets.chomp
    puts "Please enter the cohort"
    cohort = gets.chomp
  end
  #return the array of the students
  students
end
def checking
  puts "Is everything correct? Type NO if not"
  answer = gets.chomp
  input_students if answer == "NO"
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students_by_cohort = {}
  students.each do |student|
    student_cohort = student[:cohort]
    if students_by_cohort[student_cohort] == nil
      students_by_cohort[student_cohort] =[]
    end
    students_by_cohort[student_cohort].push(student[:name])
  end
  puts "What cohort do you want to print?"
  cohort_print = gets.chomp
  students_by_cohort.each do |key, value|
    if cohort_print == key
      puts value
    end
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
