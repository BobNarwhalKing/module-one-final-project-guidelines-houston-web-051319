class CreateStudents < ActiveRecord::Migration[5.0]
  def change
      create_table :students do |t|
        t.string :first_name
        t.string :last_name
        t.date :birthday
        t.string :gender
        t.string :country
        t.text :description
        t.string :fav_music
        t.string :fav_movie
        t.string :fav_food
        t.text :languages
      end
  end
end
