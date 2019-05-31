def cohort_question(prompt)

    cohort1, cohort2, cohort3, cohort4, cohort5, cohort6, cohort7, cohort8, go_back = -1, -2, -3, -4, -5, -6, -7, -8, -9

    all_cohorts = Cohort.all
    all_cohort_names = all_cohorts.map {|co| co.cohort_name}
    all_cohort_names << "Go Back"
    while true
        cohort = prompt.select("Which cohort would you like to know about?", [all_cohort_names])
        
            case cohort
            when "Go Back"
                puts "\e[H\e[2J"
                start(prompt)
            else
                coh = Cohort.all.select {|co| co.cohort_name == cohort}
                var = coh[0].students
                puts "\e[H\e[2J"
                cohort_prompt(prompt, var)
            end
    end
end


