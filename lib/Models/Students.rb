class Student < ActiveRecord::Base
    belongs_to :cohort
#     def self.all_first_names
#         self.all.map {|all_students| all_students.first_name}
#     end


#     def self.all_last_names
#         self.all.map {|all_students| all_students.last_name}
#     end

#     def self.all_cohort_ids
#         self.all.map {|all_students| all_students.cohort_id}
#     end

#     def self.add_student
#         data = CSV.read("./csv/FlatironStudentInfo.csv")
#         puts data[0][0]
#     end

# #     def self.info_adder(arr)
# # #        temp_var = Student.create(first_name: arr[1] last_name: arr[2] birthday: arr[3] gender: arr[4] country: arr[5] description: arr[6] fav_music: arr[7] fav_movie: arr[8] fav_food: arr[9] languages: arr[10] cohort_id: Student.id_checker(arr[0]))
# #         self.all_first_names.each do|all_first_names|
# #             self.all_last_names.each do|all_last_names|
# #                 self.all_cohort_ids do|all_cohort_ids|
# #                     if (temp_var.first_name != all_first_names)
# #                         temp_var.save
# #                     elsif(temp_var.last_name != all_last_names)
# #                         temp_var.save
# #                     elsif (temp_var.cohort_id != all_cohort_ids)
# #                         temp_var.save
# #                     end
# #                 end
# #             end
# #         end
# #     end

#     def self.id_checker (index)
#         Cohort.all.each do |all_cohorts|
#             if all_cohorts[:cohort_name] == index.to_s
#                 return all_cohorts[:id]
#             end
#         end
#     end
end