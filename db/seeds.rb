Student.destroy_all
Cohort.destroy_all


cohorts = ["Houston-web-071618", 
"Houston-web-082718", 
"Houston-web-100818", 
"Houston-web-111918", 
"Houston-web-021819", 
"Houston-web-040119", 
"Houston-DS-042219", 
"Houston-web-051319"]

cohorts.each do |cohorts|
    Cohort.create(cohort_name: cohorts)
end

data = CSV.read("./csv/FlatironStudentInfo2.csv")
data.each do |data|
    arr = data
    var = arr[0]
        Cohort.all.each do |all_cohorts|
        if all_cohorts[:cohort_name] == var.to_s
            $id = all_cohorts[:id]
        end
    end
Student.create(first_name: "#{arr[1]}", last_name: "#{arr[2]}", birthday: "#{arr[3]}", gender: "#{arr[4]}", country: "#{arr[5]}", description: "#{arr[6]}", fav_music: "#{arr[7]}", fav_movie: "#{arr[8]}", fav_food: "#{arr[9]}", languages: "#{arr[10]}", cohort_id: $id)
end



