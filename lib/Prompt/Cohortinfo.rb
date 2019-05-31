def studentname(id)
   test= Student.all.select do|student|
      student.cohort_id == id

    end
    # test.each do |student|
    #  student.first_name
    #  end
# returning test (Prints name but dont use as options)
end



