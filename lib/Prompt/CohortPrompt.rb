def cohort_prompt(prompt, students)
    
    student_picked, back_one, exit_menu = -1, -2, -3

    while true
        options = students.map {|student|student.full_name}
        var = options.length
        test2= var+1
        options[var] = "Go Back One"
        options[test2]= "Exit"
        answer = prompt.select("Which student would you like to know about?", options)
        case answer
        when "Go Back One"
            puts "\e[H\e[2J"
            cohort_question(prompt)
        when "Exit"
            puts "\e[H\e[2J"
            start(prompt)
        else
            puts "\e[H\e[2J"
            student_info(prompt, answer, students)
        end
    end


end