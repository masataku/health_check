# symptoms
Symptom.create(id: 1, name: '咳(せき)')
Symptom.create(id: 2, name: 'のど痛')
Symptom.create(id: 3, name: '頭痛')
Symptom.create(id: 4, name: '腹痛')
Symptom.create(id: 5, name: '鼻水')
Symptom.create(id: 6, name: 'だるさ')
Symptom.create(id: 7, name: 'その他')



#school
school = School.create(email: "111@111", school_name: "青山中学校", head_teacher: "青山太郎", password: "12345a", password_confirmation: "12345a", teacher_password: "12345a", student_password: "12345a")



#teachers
Teacher.create(name: "青山とおる", grade: 1, my_class: 1, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "山下隼人", grade: 1, my_class: 1, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "小林とおる", grade: 1, my_class: 2, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "青山花子", grade: 1, my_class: 2, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "田中まきこ", grade: 1, my_class: 3, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "小森タロウ", grade: 2, my_class: 1, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "青森ともき", grade: 2, my_class: 1, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "橋本隼人", grade: 2, my_class: 1, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "林とおる", grade: 2, my_class: 2, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "田中花子", grade: 2, my_class: 2, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "中田まき", grade: 2, my_class: 3, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "田森まい", grade: 2, my_class: 3, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "村田けん", grade: 3, my_class: 1, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "森まい", grade: 3, my_class: 1, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "小林理子", grade: 3, my_class: 2, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "高田花子", grade: 3, my_class: 2, teacher_password: "correct", year: 2020, school_id: school.id)
Teacher.create(name: "加藤りょう", grade: 3, my_class: 3, teacher_password: "correct", year: 2020, school_id: school.id)



# students
#1年1組
student1 = Student.create(grade: 1, my_class: 1, number: 1, first_name: "太郎", last_name: "合田", first_name_kana: "タロウ", last_name_kana: "アイダ", student_password: "correct", year: 2021, school_id: school.id)
student2 = Student.create(grade: 1, my_class: 1, number: 2, first_name: "太郎", last_name: "井田", first_name_kana: "タロウ", last_name_kana: "イダ", student_password: "correct", year: 2021, school_id: school.id)
student3 = Student.create(grade: 1, my_class: 1, number: 3, first_name: "太郎", last_name: "上田", first_name_kana: "タロウ", last_name_kana: "ウエダ", student_password: "correct", year: 2021, school_id: school.id)

#1年2組
student4 = Student.create(grade: 1, my_class: 2, number: 1, first_name: "花子", last_name: "合田", first_name_kana: "ハナコ", last_name_kana: "アイダ", student_password: "correct", year: 2021, school_id: school.id)
student5 = Student.create(grade: 1, my_class: 2, number: 2, first_name: "花子", last_name: "井田", first_name_kana: "ハナコ", last_name_kana: "イダ", student_password: "correct", year: 2021, school_id: school.id)
student6 = Student.create(grade: 1, my_class: 2, number: 3, first_name: "花子", last_name: "上田", first_name_kana: "ハナコ", last_name_kana: "ウエダ", student_password: "correct", year: 2021, school_id: school.id)

#2年1組
student7 = Student.create(grade: 2, my_class: 1, number: 1, first_name: "孝太郎", last_name: "合田", first_name_kana: "コウタロウ", last_name_kana: "アイダ", student_password: "correct", year: 2021, school_id: school.id)
student8 = Student.create(grade: 2, my_class: 1, number: 2, first_name: "孝太郎", last_name: "井田", first_name_kana: "コウタロウ", last_name_kana: "イダ", student_password: "correct", year: 2021, school_id: school.id)
student9 = Student.create(grade: 2, my_class: 1, number: 3, first_name: "孝太郎", last_name: "上田", first_name_kana: "コウタロウ", last_name_kana: "ウエダ", student_password: "correct", year: 2021, school_id: school.id)

#2年2組
student10 = Student.create(grade: 2, my_class: 2, number: 1, first_name: "花", last_name: "合田", first_name_kana: "ハナ", last_name_kana: "アイダ", student_password: "correct", year: 2021, school_id: school.id)
student11 = Student.create(grade: 2, my_class: 2, number: 2, first_name: "花", last_name: "井田", first_name_kana: "ハナ", last_name_kana: "イダ", student_password: "correct", year: 2021, school_id: school.id)
student12 = Student.create(grade: 2, my_class: 2, number: 3, first_name: "花", last_name: "上田", first_name_kana: "ハナ", last_name_kana: "ウエダ", student_password: "correct", year: 2021, school_id: school.id)

#3年1組
student13 = Student.create(grade: 3, my_class: 1, number: 1, first_name: "太郎", last_name: "合田", first_name_kana: "タロウ", last_name_kana: "アイダ", student_password: "correct", year: 2021, school_id: school.id)
student14 = Student.create(grade: 3, my_class: 1, number: 2, first_name: "太郎", last_name: "井田", first_name_kana: "タロウ", last_name_kana: "イダ", student_password: "correct", year: 2021, school_id: school.id)
student15 = Student.create(grade: 3, my_class: 1, number: 3, first_name: "太郎", last_name: "上田", first_name_kana: "タロウ", last_name_kana: "ウエダ", student_password: "correct", year: 2021, school_id: school.id)

#3年2組
student16 = Student.create(grade: 3, my_class: 2, number: 1, first_name: "花子", last_name: "合田", first_name_kana: "ハナコ", last_name_kana: "アイダ", student_password: "correct", year: 2021, school_id: school.id)
student17 = Student.create(grade: 3, my_class: 2, number: 2, first_name: "花子", last_name: "井田", first_name_kana: "ハナコ", last_name_kana: "イダ", student_password: "correct", year: 2021, school_id: school.id)
student18 = Student.create(grade: 3, my_class: 2, number: 3, first_name: "花子", last_name: "上田", first_name_kana: "ハナコ", last_name_kana: "ウエダ", student_password: "correct", year: 2021, school_id: school.id)



# 本日のsheets
sheet1 = Sheet.create(grade: 1, my_class: 1, year: 2021, school_id: school.id, date: Date.today)
sheet2 = Sheet.create(grade: 1, my_class: 2, year: 2021, school_id: school.id, date: Date.today)
sheet3 = Sheet.create(grade: 2, my_class: 1, year: 2021, school_id: school.id, date: Date.today)
sheet4 = Sheet.create(grade: 2, my_class: 2, year: 2021, school_id: school.id, date: Date.today)
sheet5 = Sheet.create(grade: 3, my_class: 1, year: 2021, school_id: school.id, date: Date.today)
sheet6 = Sheet.create(grade: 3, my_class: 2, year: 2021, school_id: school.id, date: Date.today)

# 昨日のsheets
sheet7 = Sheet.create(grade: 1, my_class: 1, year: (Date.today - 1).year, school_id: school.id, date: Date.today - 1)
sheet8 = Sheet.create(grade: 1, my_class: 2, year: (Date.today - 1).year, school_id: school.id, date: Date.today - 1)
sheet9 = Sheet.create(grade: 2, my_class: 1, year: (Date.today - 1).year, school_id: school.id, date: Date.today - 1)
sheet10 = Sheet.create(grade: 2, my_class: 2, year: (Date.today - 1).year, school_id: school.id, date: Date.today - 1)
sheet11 = Sheet.create(grade: 3, my_class: 1, year: (Date.today - 1).year, school_id: school.id, date: Date.today - 1)
sheet12 = Sheet.create(grade: 3, my_class: 2, year: (Date.today - 1).year, school_id: school.id, date: Date.today - 1)



## 本日のchecks
# 1年1組
check1 = Check.create(student_id: student1.id, sheet_id: sheet1.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 4, leave_early: "false", late: "false", temperature_id: 5)
check2 = Check.create(student_id: student2.id, sheet_id: sheet1.id, date: Date.today, condition_id: 2, symptoms_id: 1, opinion: "今日も１日頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 6, leave_early: "false", late: "false", temperature_id: 7)
check3 = Check.create(student_id: student3.id, sheet_id: sheet1.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "今日は元気そうです。寝る時間も早くて、朝ごはんもたくさん食べてくれました。", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 6)

# 1年2組
check4 = Check.create(student_id: student4.id, sheet_id: sheet2.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 5)
check5 = Check.create(student_id: student5.id, sheet_id: sheet2.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "今日も頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 6, leave_early: "false", late: "false", temperature_id: 6)
check6 = Check.create(student_id: student6.id, sheet_id: sheet2.id, date: Date.today, condition_id: 3, symptoms_id: 2, opinion: "今日は元気がなさそうです。寝る時間も遅く、朝ごはんも食べてません。", attend: "false", check: 1, breakfast: "false", bed_time_id: 8, leave_early: "false", late: "false", temperature_id: 10)
#check6_symptoms
CheckSymptom.create(check_id: check6.id, symptom_id: 1)
CheckSymptom.create(check_id: check6.id, symptom_id: 2)
CheckSymptom.create(check_id: check6.id, symptom_id: 3)
CheckSymptom.create(check_id: check6.id, symptom_id: 4)
CheckSymptom.create(check_id: check6.id, symptom_id: 5)
CheckSymptom.create(check_id: check6.id, symptom_id: 6)
CheckSymptom.create(check_id: check6.id, symptom_id: 7)

# 2年1組
check7 = Check.create(student_id: student7.id, sheet_id: sheet3.id, date: Date.today, condition_id: 2, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 4, leave_early: "false", late: "false", temperature_id: 5)
check8 = Check.create(student_id: student8.id, sheet_id: sheet3.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "今日も１日頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 9, leave_early: "false", late: "false", temperature_id: 4)
check9 = Check.create(student_id: student9.id, sheet_id: sheet3.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "今日は元気そうです。朝ごはんもたくさん食べてくれました。", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 6)

# 2年2組
check10 = Check.create(student_id: student10.id, sheet_id: sheet4.id, date: Date.today, condition_id: 3, symptoms_id: 2, opinion: "今日は欠席になります。寝る時間も遅く、朝ごはんも食べてません。", attend: "false", check: 1, breakfast: "false", bed_time_id: 6, leave_early: "false", late: "false", temperature_id: 5)
check11 = Check.create(student_id: student11.id, sheet_id: sheet4.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "今日も頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 6, leave_early: "false", late: "false", temperature_id: 6)
check12 = Check.create(student_id: student12.id, sheet_id: sheet4.id, date: Date.today, condition_id: 2, symptoms_id: 2, opinion: "", attend: "false", check: 1, breakfast: "false", bed_time_id: 8, leave_early: "false", late: "false", temperature_id: 3)
#check10_symptoms
CheckSymptom.create(check_id: check10.id, symptom_id: 2)
CheckSymptom.create(check_id: check10.id, symptom_id: 5)
#check12_symptoms
CheckSymptom.create(check_id: check12.id, symptom_id: 1)
CheckSymptom.create(check_id: check12.id, symptom_id: 4)
CheckSymptom.create(check_id: check12.id, symptom_id: 5)
CheckSymptom.create(check_id: check12.id, symptom_id: 6)

# 3年1組
check13 = Check.create(student_id: student13.id, sheet_id: sheet5.id, date: Date.today, condition_id: 2, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 4, leave_early: "false", late: "false", temperature_id: 5)
check14 = Check.create(student_id: student14.id, sheet_id: sheet5.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "今日も１日頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 9, leave_early: "false", late: "false", temperature_id: 4)
check15 = Check.create(student_id: student15.id, sheet_id: sheet5.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "今日は元気そうです。朝ごはんもたくさん食べてくれました。", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 6)

# 3年2組
check16 = Check.create(student_id: student16.id, sheet_id: sheet6.id, date: Date.today, condition_id: 2, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 4, leave_early: "false", late: "false", temperature_id: 5)
check17 = Check.create(student_id: student17.id, sheet_id: sheet6.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "今日も１日頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 9, leave_early: "false", late: "false", temperature_id: 4)
check18 = Check.create(student_id: student18.id, sheet_id: sheet6.id, date: Date.today, condition_id: 1, symptoms_id: 1, opinion: "今日は元気そうです。朝ごはんもたくさん食べてくれました。", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 6)



## 昨日のchecks
# 1年1組
check1 = Check.create(student_id: student1.id, sheet_id: sheet7.id, date: Date.today - 1, condition_id: 1, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 6)
check2 = Check.create(student_id: student2.id, sheet_id: sheet7.id, date: Date.today - 1, condition_id: 2, symptoms_id: 1, opinion: "今日も１日頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 5, leave_early: "false", late: "false", temperature_id: 7)
check3 = Check.create(student_id: student3.id, sheet_id: sheet7.id, date: Date.today - 1, condition_id: 1, symptoms_id: 1, opinion: "今日は元気そうです。寝る時間も早くて、朝ごはんもたくさん食べてくれました。", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 6)

# 1年2組
check4 = Check.create(student_id: student4.id, sheet_id: sheet8.id, date: Date.today - 1, condition_id: 2, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 2, leave_early: "false", late: "false", temperature_id: 5)
check5 = Check.create(student_id: student5.id, sheet_id: sheet8.id, date: Date.today - 1, condition_id: 1, symptoms_id: 1, opinion: "今日も頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 6, leave_early: "false", late: "false", temperature_id: 6)
check6 = Check.create(student_id: student6.id, sheet_id: sheet8.id, date: Date.today - 1, condition_id: 3, symptoms_id: 1, opinion: "今日は元気がなさそうです。朝ごはんも食べてません。", attend: "false", check: 1, breakfast: "false", bed_time_id: 7, leave_early: "false", late: "false", temperature_id: 10)

# 2年1組
check7 = Check.create(student_id: student7.id, sheet_id: sheet9.id, date: Date.today - 1, condition_id: 2, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 4, leave_early: "false", late: "false", temperature_id: 5)
check8 = Check.create(student_id: student8.id, sheet_id: sheet9.id, date: Date.today - 1, condition_id: 2, symptoms_id: 1, opinion: "今日も１日頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 9, leave_early: "false", late: "false", temperature_id: 4)
check9 = Check.create(student_id: student9.id, sheet_id: sheet9.id, date: Date.today - 1, condition_id: 1, symptoms_id: 1, opinion: "今日は元気そうです。朝ごはんもたくさん食べてくれました。", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 6)

# 2年2組
check10 = Check.create(student_id: student10.id, sheet_id: sheet10.id, date: Date.today - 1, condition_id: 1, symptoms_id: 1, opinion: "今日はすごく元気そうです。", attend: "true", check: 1, breakfast: "false", bed_time_id: 6, leave_early: "false", late: "false", temperature_id: 5)
check11 = Check.create(student_id: student11.id, sheet_id: sheet10.id, date: Date.today - 1, condition_id: 1, symptoms_id: 1, opinion: "今日も頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 6, leave_early: "false", late: "false", temperature_id: 6)
check12 = Check.create(student_id: student12.id, sheet_id: sheet10.id, date: Date.today - 1, condition_id: 2, symptoms_id: 1, opinion: "", attend: "false", check: 1, breakfast: "false", bed_time_id: 8, leave_early: "false", late: "false", temperature_id: 3)

# 3年1組
check13 = Check.create(student_id: student13.id, sheet_id: sheet11.id, date: Date.today - 1, condition_id: 2, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 7)
check14 = Check.create(student_id: student14.id, sheet_id: sheet11.id, date: Date.today - 1, condition_id: 2, symptoms_id: 1, opinion: "今日も１日頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 9, leave_early: "false", late: "false", temperature_id: 4)
check15 = Check.create(student_id: student15.id, sheet_id: sheet11.id, date: Date.today - 1, condition_id: 2, symptoms_id: 1, opinion: "今日は少し悪そうです。朝ごはんはたくさん食べてくれました。", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 6)

# 3年2組
check16 = Check.create(student_id: student16.id, sheet_id: sheet12.id, date: Date.today - 1, condition_id: 2, symptoms_id: 1, opinion: "", attend: "true", check: 1, breakfast: "true", bed_time_id: 4, leave_early: "false", late: "false", temperature_id: 5)
check17 = Check.create(student_id: student17.id, sheet_id: sheet12.id, date: Date.today - 1, condition_id: 3, symptoms_id: 1, opinion: "今日も１日頑張ります", attend: "true", check: 1, breakfast: "true", bed_time_id: 9, leave_early: "false", late: "false", temperature_id: 7)
check18 = Check.create(student_id: student18.id, sheet_id: sheet12.id, date: Date.today - 1, condition_id: 3, symptoms_id: 1, opinion: "今日はしんどそうです。朝ごはんはたくさん食べてくれました。", attend: "true", check: 1, breakfast: "true", bed_time_id: 3, leave_early: "false", late: "false", temperature_id: 9)

