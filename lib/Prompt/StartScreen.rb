def start(prompt)
   

    select_info, select_login, select_exit_now = -1, -2, -3
    
    while true
        selection = prompt.select("What would you like to do today?", ["Learn about the cohorts", "Admin Login", "Exit"]) do |menu|
            menu.choice "Learn about the cohorts", select_info
            menu.choice "Admin Login", select_login
            menu.choice "Exit", select_exit_now
        end

            case selection
            when select_info
                puts "\e[H\e[2J"
                cohort_question(prompt)
            when select_login
                puts "\e[H\e[2J"
                #p "admin_login"
                login(prompt)
            when select_exit_now
                puts "\e[H\e[2J"
                quit_program
            end
    end
end

