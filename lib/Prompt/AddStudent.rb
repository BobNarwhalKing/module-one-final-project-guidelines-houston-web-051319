def add_student (prompt)
    #select_info, select_login, select_exit_now = -1, -2, -3
    while true
        fname = prompt.ask('Students First Name:')
        lname = prompt.ask('Students Last Name:')
        birthday = prompt.ask('Birthday (YYYY-MM-DD):')
        gender = prompt.ask('Gender:')
        country = prompt.ask('Country:')
        description = prompt.ask('Description:')
        fav_music = prompt.ask('Favorite Music:')
        fav_movie = prompt.ask('Favorite Movie:')
        fav_food = prompt.ask('Favorite Food:')
        languages = prompt.ask('Languages:')
        cohort = prompt.ask('Cohort ID:')
        Student.create(first_name: fname, last_name: lname, birthday: birthday, gender: gender, country: country, description: description, fav_music: fav_music, fav_movie: fav_movie, fav_food: fav_food, languages: languages, cohort_id: cohort)
        admin_menu(prompt)
    end
end