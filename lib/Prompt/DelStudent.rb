def del_student (prompt)
    students = []
    students << Student.all_first_names

    while true
        students << "Go Back One"
        answer = prompt.select("Which student would you like to delete?", students)
        case answer
        when "Go Back One"
            puts "\e[H\e[2J"
            admin_menu(prompt)
        else
            puts "\e[H\e[2J"
            Student.where(first_name: answer).destroy_all
        end
    end
end