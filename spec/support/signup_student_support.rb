module SignupStudentSupport
  def signup_student(school, student)
    visit new_school_student_path(school)
    expect(page).to have_content("生徒登録")
    fill_in "student_grade", with: student.grade
    fill_in "student_my_class", with: student.my_class
    fill_in "student_number", with: student.number
    fill_in "student_last_name", with: student.last_name
    fill_in "student_first_name", with: student.first_name
    fill_in "student_last_name_kana", with: student.last_name_kana
    fill_in "student_first_name_kana", with: student.first_name_kana
    fill_in "student_student_password", with: school.student_password
    expect{find('input[name="commit"]').click}.to change {Student.count}.by(1)
    expect(current_path).to eq school_students_path(school)
  end  
end  