require 'rails_helper'

RSpec.describe "Schools", type: :system do
  describe "学校の新規作成機能" do
    context "新規登録に成功する時" do
      it "登録に必要な学校の情報が入力されていれば登録できる" do
        visit root_path
        expect(page).to have_content("今すぐはじめる")
        find(".signup-btn").click
        expect(current_path).to eq new_school_path
        fill_in "school_school_name", with: "青山中学校"
        fill_in "school_head_teacher", with: "青山太郎"
        fill_in "school_email", with: "12a@12a"
        fill_in "school_password", with: "12345a"
        fill_in "school_password_confirmation", with: "12345a"
        fill_in "school_teacher_password", with: "12345a"
        fill_in "school_student_password", with: "12345a"
        expect{find('input[name="commit"]').click}.to change {School.count}.by(1)
        expect(current_path).to eq school_path(School.first)
        expect(page).to have_content("学校が作成できました")
      end  
    end  
    context "新規登録に失敗する時" do
      it "登録に必要な学校の情報が誤って入力されていれば登録できない" do
        visit new_school_path
        fill_in "school_school_name", with: nil
        fill_in "school_head_teacher", with: "青山太郎"
        fill_in "school_email", with: "12a@12a"
        fill_in "school_password", with: "12345a"
        fill_in "school_password_confirmation", with: "12345a"
        fill_in "school_teacher_password", with: "12345a"
        fill_in "school_student_password", with: "12345a"
        expect{find('input[name="commit"]').click}.to change {School.count}.by(0)
        expect(current_path).to eq "/schools"
      end  
    end 
  end 

  describe "学校のログイン機能" do
    before do
      @school = FactoryBot.create(:school)
    end  
    context "ログインに成功する時" do
      it "ログインに必要な学校の情報が入力されていれば登録できる" do
        visit root_path
        expect(page).to have_content("自分の学校へ行く")
        find(".signin-btn").click
        expect(current_path).to eq login_form_schools_path
        fill_in "school_email", with: @school.email
        fill_in "school_password", with: @school.password
        fill_in "school_password_confirmation", with: @school.password_confirmation
        find('input[name="commit"]').click
        expect(current_path).to eq school_path(@school)
        expect(page).to have_content("ログインしました")
      end  
    end
    context "ログインに失敗する時" do
      it "ログインに必要な学校の情報が入力されていなければ登録できない" do
        visit login_form_schools_path
        fill_in "school_email", with: nil
        fill_in "school_password", with: @school.password
        fill_in "school_password_confirmation", with: @school.password_confirmation
        find('input[name="commit"]').click
        expect(current_path).to eq "/schools/login"
      end
    end  
  end
  
  describe "学校の情報編集機能" do
    before do
      @school = FactoryBot.create(:school)
    end 
    context "学校の情報の編集が成功する時" do
      it "ログイン後,認証ページで必要な情報が入力されて編集ページへ入る。
          編集ページで学校の各情報が正しく入力される。" do 
        sign_in(@school)
        confirm(@school)
        fill_in "school_school_name", with: "青森中学校"
        fill_in "school_head_teacher", with: @school.head_teacher
        fill_in "school_email", with: @school.email
        fill_in "school_teacher_password", with: @school.teacher_password
        fill_in "school_student_password", with: @school.student_password
        fill_in "school_password", with: @school.password
        fill_in "school_password_confirmation", with: @school.password_confirmation
        find('input[name="commit"]').click
        expect(current_path).to eq school_path(@school)
        expect(page).to have_content("編集しました")
        expect(page).to have_content("青森中学校")
      end    
    end  
    context "学校の情報の編集が失敗する時" do
      it "ログイン後,認証ページで必要な情報が入力されず編集ページへいけない" do
        sign_in(@school)
        expect(page).to have_content("設定")
        find(".confirm-btn").click
        expect(current_path).to eq confirm_school_path(@school)
        fill_in "school_email", with: nil
        fill_in "school_password", with: @school.password
        fill_in "school_password_confirmation", with: @school.password_confirmation
        find('input[name="commit"]').click
        expect(page).to have_content("認証") 
      end  
      it "ログイン後,認証ページで必要な情報が入力され編集ページへいけるが,
          編集ページで学校の各情報が正しく入力されない" do
        sign_in(@school)
        confirm(@school)
        fill_in "school_school_name", with: nil
        fill_in "school_head_teacher", with: @school.head_teacher
        fill_in "school_email", with: @school.email
        fill_in "school_teacher_password", with: @school.teacher_password
        fill_in "school_student_password", with: @school.student_password
        fill_in "school_password", with: @school.password
        fill_in "school_password_confirmation", with: @school.password_confirmation
        find('input[name="commit"]').click
        expect(page).to have_content("学校編集")
      end    
    end  
  end  
end
