def admin_menu (prompt)

    del_cohort, del_student, add_cohort, add_student, change_cohort, change_student, logout, select_exit_now = -1, -2, -3, -4, -5, -6, -7, -8
    
    while true
        selection = prompt.select("What would you like to do today?", ["Delete a Cohort", "Delete a student", "Add a Cohort", "Add a Student", "Change a Cohort Information", "Change Student Information","Logout", "Exit"]) do |menu|
            menu.choice "Delete a Cohort", del_cohort
            menu.choice "Delete a student", del_student
            menu.choice "Add a Cohort", add_cohort
            menu.choice "Add a Student", add_student
            menu.choice "Change a Cohort Information", change_cohort
            menu.choice "Change Student Information(Coming Soon)", change_student
            menu.choice "Logout", logout
            menu.choice "Exit", select_exit_now
        end

            case selection
            when del_cohort
                puts "\e[H\e[2J"
                del_cohort(prompt)
            when del_student
                puts "\e[H\e[2J"
                del_student(prompt)
            when add_cohort
                puts "\e[H\e[2J"
                add_cohort(prompt)
            when add_student
                puts "\e[H\e[2J"
                add_student(prompt)
            when change_cohort
                puts "\e[H\e[2J"
                change_cohort(prompt)
            when change_student
                puts "\e[H\e[2J"
                change_student(prompt)
            when logout
                puts "\e[H\e[2J"
                start(prompt)
            when select_exit_now
                puts "\e[H\e[2J"
                quit_program
            end
    end
end