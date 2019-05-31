def students_by_cohort(current_cohort_name)
    cohort = Cohort.find_by(cohort_name: current_cohort_name)
    cohort.students
end