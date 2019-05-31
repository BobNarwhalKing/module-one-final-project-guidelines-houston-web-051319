def add_cohort (prompt)
    while true
        selection = prompt.ask('What would you like to name the cohort')
            Cohort.create(cohort_name: selection)
            admin_menu(prompt)
    end
end