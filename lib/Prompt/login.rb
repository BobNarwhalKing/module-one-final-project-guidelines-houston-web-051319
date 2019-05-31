def login(prompt)
    #p "enter your user name:"
    user_name = gets.chomp
    if user_name == "123"
         "You're logged in!"
         select_delete, select_update, select_exit_now = -1, -2, -3
    
         while true
             selection = prompt.select("What would you like to do today?", ["delete", "update", "Exit"]) do |menu|
                 menu.choice "delete", select_delete
                 menu.choice "update", select_update
                 menu.choice "Exit", select_exit_now
                 end
     
                 case selection
                 when select_delete
                     puts "\e[H\e[2J"
                     #cohort_question(prompt)
                     p "delete"
                     student_choices = studentname(1).map do |st| st.first_name end
                        one_student = prompt.select("choose student: ", student_choices)
        
                        student_obj =  Student.delete(first_name: one_student)

                 when select_update
                     puts "\e[H\e[2J"
                     #p "admin_login"
                     
                 when select_exit_now
                     puts "\e[H\e[2J"
                     quit_program
           
                 end

            end         
    





     

        else
        
        p "Nope"
    end
end