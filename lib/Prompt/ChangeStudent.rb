def change_student(prompt)

all_students = Student.all
    all_students_names = all_students.map {|student| student.first_name}
    all_students_names << "Go Back"

    while true
        student = prompt.select("Which student would you like to delete?", [all_students_names])
        
            case student
             when "Go Back"
                puts "\e[H\e[2J"
                admin_menu(prompt)
             else
                puts "\e[H\e[2J"
                var = Student.find_by(first_name: student)
               new_name = prompt.ask("What you like to change their name too:")
                Student.update(var, first_name: new_name)
            end
    end
end