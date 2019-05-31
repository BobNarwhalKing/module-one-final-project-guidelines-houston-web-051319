def cohort_question(prompt)

    cohort1, cohort2, cohort3, cohort4, cohort5, cohort6, cohort7, cohort8, go_back = -1, -2, -3, -4, -5, -6, -7, -8, -9


    while true
        cohort = prompt.select("Which cohort would you like to know about?", ["Houston-web-071618", 
        "Houston-web-082718", 
        "Houston-web-100818", 
        "Houston-web-111918", 
        "Houston-web-021819", 
        "Houston-web-040119", 
        "Houston-DS-042219", 
        "Houston-web-051319",
        "Go Back One"]) do |menu|
            menu.choice "Houston-web-071618", cohort1
            menu.choice "Houston-web-082718", cohort2
            menu.choice "Houston-web-100818", cohort3
            menu.choice "Houston-web-111918", cohort4
            menu.choice "Houston-web-021819", cohort5
            menu.choice "Houston-web-040119", cohort6
            menu.choice "Houston-DS-042219", cohort7
            menu.choice "Houston-web-051319", cohort8
            menu.choice "Go Back One", go_back
        end
        
            case cohort
            when cohort1
                puts "\e[H\e[2J"
                student_choices = studentname(1).map do |st| st.first_name end
                one_student = prompt.select("choose student: ", student_choices)

                student_obj =  Student.find_by(first_name: one_student)
                puts  "#{student_obj.first_name} #{student_obj.last_name}"
                puts "gender: #{student_obj.gender}"
                puts "country: #{student_obj.country}"
                puts "description: #{student_obj.description}" 
                puts "favorite music: #{student_obj.fav_music}"
                puts "favorite movie : #{student_obj.fav_movie}"
                puts "languages : #{student_obj.languages}"
                

                
                    
            when cohort2
                puts "\e[H\e[2J"
                student_choices = studentname(2).map do |st| st.first_name end
                    one_student = prompt.select("choose student: ", student_choices)
                    student_obj =  Student.find_by(first_name: one_student)
                puts  "#{student_obj.first_name} #{student_obj.last_name}"
                puts "gender: #{student_obj.gender}"
                puts "country: #{student_obj.country}"
                puts "description: #{student_obj.description}" 
                puts "favorite music: #{student_obj.fav_music}"
                puts "favorite movie : #{student_obj.fav_movie}"
                puts "languages : #{student_obj.languages}"
                
                       

            
            
            when cohort3
             puts "\e[H\e[2J"
                student_choices = studentname(3).map do |st| st.first_name end
                    one_student = prompt.select("choose student: ", student_choices)
                    student_obj =  Student.find_by(first_name: one_student)
                puts  "#{student_obj.first_name} #{student_obj.last_name}"
                puts "gender: #{student_obj.gender}"
                puts "country: #{student_obj.country}"
                puts "description: #{student_obj.description}" 
                puts "favorite music: #{student_obj.fav_music}"
                puts "favorite movie : #{student_obj.fav_movie}"
                puts "languages : #{student_obj.languages}"
                
            
            when cohort4
                puts "\e[H\e[2J"
                # student_choices = studentname(4).map do |st| st.first_name end
                #     one_student = prompt.select("choose student: ", student_choices)
                #     student_obj =  Student.find_by(first_name: one_student)
                # puts  "#{student_obj.first_name} #{student_obj.last_name}"
                # puts "gender: #{student_obj.gender}"
                # puts "country: #{student_obj.country}"
                # puts "description: #{student_obj.description}" 
                # puts "favorite music: #{student_obj.fav_music}"
                # puts "favorite movie : #{student_obj.fav_movie}"
                # puts "languages : #{student_obj.languages}"
                puts "no data"
                

            
            when cohort5
                puts "\e[H\e[2J"
                student_choices = studentname(5).map do |st| st.first_name end
                    one_student = prompt.select("choose student: ", student_choices)
                    student_obj =  Student.find_by(first_name: one_student)
                puts  "#{student_obj.first_name} #{student_obj.last_name}"
                puts "gender: #{student_obj.gender}"
                puts "country: #{student_obj.country}"
                puts "description: #{student_obj.description}" 
                puts "favorite music: #{student_obj.fav_music}"
                puts "favorite movie : #{student_obj.fav_movie}"
                puts "languages : #{student_obj.languages}"
                
                
            when cohort6
                puts "\e[H\e[2J"
                student_choices = studentname(6).map do |st| st.first_name end
                    one_student = prompt.select("choose student: ", student_choices)
                    student_obj =  Student.find_by(first_name: one_student)
                puts  "#{student_obj.first_name} #{student_obj.last_name}"
                puts "gender: #{student_obj.gender}"
                puts "country: #{student_obj.country}"
                puts "description: #{student_obj.description}" 
                puts "favorite music: #{student_obj.fav_music}"
                puts "favorite movie : #{student_obj.fav_movie}"
                puts "languages : #{student_obj.languages}"
                
                
            when cohort7
                puts "\e[H\e[2J"
                student_choices = studentname(7).map do |st| st.first_name end
                    one_student = prompt.select("choose student: ", student_choices)
                    student_obj =  Student.find_by(first_name: one_student)
                    puts  "#{student_obj.first_name} #{student_obj.last_name}"
                    puts "gender: #{student_obj.gender}"
                    puts "country: #{student_obj.country}"
                    puts "description: #{student_obj.description}" 
                    puts "favorite music: #{student_obj.fav_music}"
                    puts "favorite movie : #{student_obj.fav_movie}"
                    puts "languages : #{student_obj.languages}"
                    
            
            when cohort8
                puts "\e[H\e[2J"
                student_choices = studentname(8).map do |st| st.first_name end
                one_student = prompt.select("choose student: ", student_choices)
                student_obj =  Student.find_by(first_name: one_student)
                puts  "#{student_obj.first_name} #{student_obj.last_name}"
                puts "gender: #{student_obj.gender}"
                puts "country: #{student_obj.country}"
                puts "description: #{student_obj.description}" 
                puts "favorite music: #{student_obj.fav_music}"
                puts "favorite movie : #{student_obj.fav_movie}"
                puts "languages : #{student_obj.languages}"

                
                
                


            when go_back
                puts "\e[H\e[2J"
                start(prompt)
            end

    end
end