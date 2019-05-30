class Addforeignkeytostudents4 < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :cohort, index: true
    add_foreign_key :students, :cohorts
  end
end
