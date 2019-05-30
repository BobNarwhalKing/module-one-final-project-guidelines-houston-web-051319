class Cohort < ActiveRecord::Base


    def self.all_names
        self.all.map {|all_cohorts| all_cohorts.cohort_name}
    end
end