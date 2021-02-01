require 'rails_helper'

RSpec.describe "Teachers", type: :system do
  before do
    @school = FactoryBot.create(:school)
    @teacher = FactoryBot.build(:teacher)
  end
  describe "教員の新規作成機能" do
    context "新規作成に成功する時" do
      it "登録に必要な教員の情報が入力されていれば登録できる" do
        signup_teacher(@school, @teacher)
        expect(page).to have_content @teacher.name
        expect(page).to have_content("登録できました")
      end  
    end  
    context "新規作成に失敗する時" do
      it "登録に必要な教員の情報が入力されていなければ登録できない" do
        visit new_school_teacher_path(@school)
        fill_in "teacher_grade", with: nil
        fill_in "teacher_my_class", with: @teacher.my_class
        fill_in "teacher_name", with: @teacher.name
        fill_in "teacher_teacher_password", with: @school.teacher_password
        expect{find('input[name="commit"]').click}.to change {Teacher.count}.by(0)
        expect(current_path).to eq "/schools/#{@school.id}/teachers"
      end  
    end  
  end

  describe "教員の削除機能" do
    context "削除に成功する時" do
      it "登録完了後,教員一覧の削除ボタンを押してOKを選ぶと削除できる" do
        signup_teacher(@school, @teacher)
        page.accept_confirm do
            find_link("削除する", href: school_teacher_path(@school, Teacher.first)).click
        end
        expect(current_path).to eq new_school_teacher_path(@school)
        expect(Teacher.count).to eq 0
        expect(page).to have_content("削除しました")
      end  
    end
    context "削除に失敗する時" do
      it "登録完了後,教員一覧の削除ボタンを押してキャンセルを選ぶと削除できない" do
        signup_teacher(@school, @teacher)
        page.dismiss_confirm do
          find_link("削除する", href: school_teacher_path(@school, Teacher.first)).click
        end
        expect(current_path).to eq school_teachers_path(@school)
        expect(Teacher.count).to eq 1
      end  
    end
  end

  
end
