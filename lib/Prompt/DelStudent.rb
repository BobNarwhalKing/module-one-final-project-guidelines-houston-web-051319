def del_student (prompt)
    students = []
    students << Student.all_full_names

    while true
        students << "Go Back One"
        students << "Exit"
        answer = prompt.select("Which student would you like to delete?", students)
        case answer
        when "Go Back One"
            puts "\e[H\e[2J"
            cohort_question(prompt)
        when "Exit"
            puts "\e[H\e[2J"
            start(prompt)
        else
            puts "\e[H\e[2J"
            answer.destroy
        end
    end
end