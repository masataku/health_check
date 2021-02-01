require 'rails_helper'

RSpec.describe "Sheets", type: :system do
  before do
    @school = FactoryBot.create(:school)
    @student = FactoryBot.build(:student)
  end
  describe "シート作成機能" do
    context "作成に成功する時" do
      it "その日の一つ目の健康チェックが作成されれば成功する" do
        signup_student(@school, @student)
        find_link("本日のCHECKを始める", href: new_school_student_check_path(@school, Student.first)).click
        expect(current_path).to eq new_school_student_check_path(@school, Student.first)
        expect(page).to have_content("健康チェックシート")
        choose "元気"
        choose "特に無し"
        choose "食べた"
        select("21:00~21:30", from: "check[bed_time_id]")
        select("36.1度", from: "check[temperature_id]")
        choose "出席"
        fill_in "check_opinion", with: "あいうえお"
        check "check_check"
        expect{find('input[name="commit"]').click}.to change {Sheet.count}.by(1)
      end
      it "シートが既に作成されていても,そのシートとは別のクラスの1つ目の健康チェックが作成されれば成功する" do
        sheet = Sheet.create(grade: 1, my_class: 1, year: Date.today.year - 1, school_id: @school.id, date: Date.today)
        signup_student(@school, @student)
        find_link("本日のCHECKを始める", href: new_school_student_check_path(@school, Student.last)).click
        expect(current_path).to eq new_school_student_check_path(@school, Student.last)
        expect(page).to have_content("健康チェックシート")
        choose "元気"
        choose "特に無し"
        choose "食べた"
        select("21:00~21:30", from: "check[bed_time_id]")
        select("36.1度", from: "check[temperature_id]")
        choose "出席"
        fill_in "check_opinion", with: "あいうえお"
        check "check_check"
        expect{find('input[name="commit"]').click}.to change {Sheet.count}.by(1)
      end  
    end
    context "作成に失敗する時" do
      it "健康チェックが作成されても,その日に同じクラスのシートが既に作成されている時" do
        Sheet.create(grade: @student.grade, my_class: @student.my_class, year: @student.year, school_id: @school.id, date: Date.today)
        signup_student(@school, @student)
        find_link("本日のCHECKを始める", href: new_school_student_check_path(@school, Student.last)).click
        expect(current_path).to eq new_school_student_check_path(@school, Student.last)
        expect(page).to have_content("健康チェックシート")
        choose "元気"
        choose "特に無し"
        choose "食べた"
        select("21:00~21:30", from: "check[bed_time_id]")
        select("36.1度", from: "check[temperature_id]")
        choose "出席"
        fill_in "check_opinion", with: "あいうえお"
        check "check_check"
        expect{find('input[name="commit"]').click}.to change {Sheet.count}.by(0)
      end  
    end  
  end  
end
