require 'rails_helper'

RSpec.describe "Checks", type: :system do
  describe "健康チェック作成機能" do
    before do
      @school = FactoryBot.create(:school)
      @student = FactoryBot.build(:student)
    end
    context "作成に成功する時" do
      it "生徒が登録されて,作成に必要な健康チェックの情報が入力されていれば成功する" do
        signup_student(@school, @student)
        create_check(@school)
        expect(page).to have_content("送信できました")
      end  
    end
    context "作成に失敗する時" do
      it "生徒が登録されなければ健康チェックページへ飛べない" do
        @student = FactoryBot.create(:student)
        visit new_school_student_check_path(@school, @student)
        expect(current_path).to eq new_school_student_path(@school)
      end
      it "生徒が登録されていても,作成に必要な健康チェックの情報が入力されていなければ失敗する" do
        signup_student(@school, @student)
        find_link("本日のCHECKを始める", href: new_school_student_check_path(@school, Student.first)).click
        expect(current_path).to eq new_school_student_check_path(@school, Student.first)
        expect(page).to have_content("健康チェックシート")
        choose "元気"
        choose "特に無し"
        choose "食べた"
        select("選択してください", from: "check[bed_time_id]") #入力不備
        select("36.1度", from: "check[temperature_id]")
        choose "出席"
        fill_in "check_opinion", with: "あいうえお"
        check "check_check"
        expect{find('input[name="commit"]').click}.to change {Check.count}.by(0)
        expect(current_path).to eq "/schools/#{@school.id}/students/#{Student.first.id}/checks"
      end
      it "生徒が登録されていても,同じ日に既に健康チェックを作成済みであれば健康チェックページに飛べない" do
        signup_student(@school, @student)
        create_check(@school)
        expect(page).to have_content("本日のCHECKは送信済みです")
        expect(".btn-left").to have_no_link("本日のCHECKは送信済みです", href: new_school_student_check_path(@school, Student.first))
      end  
    end  
  end  
end
