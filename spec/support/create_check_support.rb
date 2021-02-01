module CreateCheckSupport
  def create_check(school)
    find_link("本日のCHECKを始める", href: new_school_student_check_path(school, Student.first)).click
    expect(current_path).to eq new_school_student_check_path(school, Student.first)
    expect(page).to have_content("健康チェックシート")
    choose "元気"
    choose "特に無し"
    choose "食べた"
    select("21:00~21:30", from: "check[bed_time_id]")
    select("36.1度", from: "check[temperature_id]")
    choose "出席"
    fill_in "check_opinion", with: "あいうえお"
    check "check_check"
    expect{find('input[name="commit"]').click}.to change {Check.count}.by(1)
    expect(current_path).to eq school_students_path(school)
  end  
end  