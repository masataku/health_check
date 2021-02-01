module SignupTeacherSupport
  def signup_teacher(school, teacher)
    visit new_school_teacher_path(school)
    fill_in "teacher_grade", with: teacher.grade
    fill_in "teacher_my_class", with: teacher.my_class
    fill_in "teacher_name", with: teacher.name
    fill_in "teacher_teacher_password", with: school.teacher_password
    expect{find('input[name="commit"]').click}.to change {Teacher.count}.by(1)
    expect(current_path).to eq school_teachers_path(school)
  end  
end  