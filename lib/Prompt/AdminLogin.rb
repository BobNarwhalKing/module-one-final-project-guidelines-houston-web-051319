def admin_login(prompt)
    select_info, select_login, select_exit_now = -1, -2, -3
    while true
        selection = prompt.ask('Please enter your password. If you would like to go back type exit.', echo: false)
            if selection == "Passw0rd"
                puts "\e[H\e[2J"
                p "admin_menu"
            elsif selection == "exit"
                puts "\e[H\e[2J"
                start(prompt)
            else 
                puts "\e[H\e[2J"
                p "Try again please or type exit"
            end
    end
end

# puts "\e[H\e[2J"