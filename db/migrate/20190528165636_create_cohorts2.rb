class CreateCohorts2 < ActiveRecord::Migration[5.0]
  def change
    create_table :cohorts do |t|
      t.string :cohort_name
    end
  end
end
