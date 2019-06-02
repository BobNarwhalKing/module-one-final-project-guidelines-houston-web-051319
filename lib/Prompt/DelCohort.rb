def del_cohort(prompt)

    all_cohorts = Cohort.all
    all_cohort_names = all_cohorts.map {|co| co.cohort_name}
    all_cohort_names << "Go Back"

    while true
        cohort = prompt.select("Which cohort would you like to delete?", [all_cohort_names])
        
            case cohort
             when "Go Back"
                puts "\e[H\e[2J"
                admin_menu(prompt)
             else
                puts "\e[H\e[2J"
                var = Cohort.find_by(cohort_name: cohort)
                #Student.where(cohort_id: var.id).destroy_all
                Cohort.where(cohort_name: cohort).destroy
            end
    end
end