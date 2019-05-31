def del_cohort(prompt)

    cohort1, cohort2, cohort3, cohort4, cohort5, cohort6, cohort7, cohort8, go_back = -1, -2, -3, -4, -5, -6, -7, -8, -9


    while true
        cohort = prompt.select("Which cohort would you like to delete?", ["Houston-web-071618", 
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
                var = Cohort.find_by(cohort_name: "Houston-web-071618")
                Student.where(cohort_id: var.id).destroy_all
                Cohort.where(cohort_name: "Houston-web-071618").destroy_all
            when cohort2
                puts "\e[H\e[2J"
                var = Cohort.find_by(cohort_name: "Houston-web-082718")
                Student.where(cohort_id: var.id).destroy_all
                Cohort.where(cohort_name: "Houston-web-082718").destroy_all
            when cohort3
                puts "\e[H\e[2J"
                var = Cohort.find_by(cohort_name: "Houston-web-100818")
                Student.where(cohort_id: var.id).destroy_all
                Cohort.where(cohort_name: "Houston-web-100818").destroy_all
            when cohort4
                puts "\e[H\e[2J"
                var = Cohort.find_by(cohort_name: "Houston-web-111918")
                Student.where(cohort_id: var.id).destroy_all
                Cohort.where(cohort_name: "Houston-web-111918").destroy_all
            when cohort5
                puts "\e[H\e[2J"
                var = Cohort.find_by(cohort_name: "Houston-web-021819")
                Student.where(cohort_id: var.id).destroy_all
                Cohort.where(cohort_name: "Houston-web-021819").destroy_all
            when cohort6
                puts "\e[H\e[2J"
                var = Cohort.find_by(cohort_name: "Houston-web-040119")
                Student.where(cohort_id: var.id).destroy_all
                Cohort.where(cohort_name: "Houston-web-040119").destroy_all
            when cohort7
                puts "\e[H\e[2J"
                var = Cohort.find_by(cohort_name: "Houston-DS-042219")
                Student.where(cohort_id: var.id).destroy_all
                Cohort.where(cohort_name: "Houston-DS-042219").destroy_all
            when cohort8
                puts "\e[H\e[2J"
                var = Cohort.find_by(cohort_name: "Houston-web-051319")
                Student.where(cohort_id: var.id).destroy_all
                Cohort.where(cohort_name: "Houston-web-051319").destroy_all
            when go_back
                puts "\e[H\e[2J"
                start(prompt)
            end
    end
end