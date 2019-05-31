def student_info (prompt, student, cohort_name)
    first_name = student.split[0]
    person = Student.find_by(first_name: first_name)
p "Hello my name is #{person.full_name}"
p "Age: #{age(person.birthday)}"
p "Gender: #{person.gender}"
p "Born in: #{person.country}"
p "Favorite Food: #{person.fav_food}"
p "Favorite Music: #{person.fav_music}"
p "Favorite Movie: #{person.fav_movie}"
p "Language(s): #{person.languages}"
p "About myself: #{person.description}"
select_go_back, select_exit_now = -1, -2, -3
while true
    selection = prompt.select("Menu", ["Go Back One", "Exit"]) do |menu|
        menu.choice "Go Back One", select_go_back
        menu.choice "Exit", select_exit_now
    end

        case selection
        when select_go_back
            puts "\e[H\e[2J"
            cohort_prompt(prompt, cohort_name)
        when select_exit_now
            puts "\e[H\e[2J"
            start(prompt)
        end
end
end