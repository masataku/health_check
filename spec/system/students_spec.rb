require 'rails_helper'

RSpec.describe "Students", type: :system do
  before do
    @school = FactoryBot.create(:school)
    @student = FactoryBot.build(:student)
  end  
  describe "生徒の新規作成機能" do
    context "新規作成に成功する時" do
      it "登録に必要な生徒の情報が入力されていれば成功する" do
        signup_student(@school, @student)
        expect(page).to have_content @student.last_name
        expect(page).to have_content @student.first_name
        expect(page).to have_content("登録できました")
      end  
    end
    context "新規作成に失敗する時" do
      it "登録に必要な生徒の情報が入力されていなければ失敗する" do
        visit new_school_student_path(@school)
        expect(page).to have_content("生徒登録")
        fill_in "student_grade", with: nil
        fill_in "student_my_class", with: @student.my_class
        fill_in "student_number", with: @student.number
        fill_in "student_last_name", with: @student.last_name
        fill_in "student_first_name", with: @student.first_name
        fill_in "student_last_name_kana", with: @student.last_name_kana
        fill_in "student_first_name_kana", with: @student.first_name_kana
        fill_in "student_student_password", with: @school.student_password
        expect{find('input[name="commit"]').click}.to change {Student.count}.by(0)
        expect(current_path).to eq "/schools/#{@school.id}/students"
      end  
    end  
  end  
end
