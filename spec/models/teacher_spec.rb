require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe "教員作成機能のテスト" do
    before do
      @teacher = FactoryBot.build(:teacher)
    end
    context "教員の作成が成功する時" do
      it "name,grade,my_class,teacher_passwordが空ではない,
          gradeは数値であり,1~3で入力される,
          my_classは数値であり,1以上で入力される" do
        expect(@teacher).to be_valid
      end    
    end
    context "教員の作成が失敗する時" do
      it "nameが空" do
        @teacher.name = nil
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Name can't be blank")
      end  
      it "gradeが空" do
        @teacher.grade = nil
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Grade can't be blank")
      end
      it "gradeが全角数字" do
        @teacher.grade = "３"
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Grade is not a number")
      end
      it "gradeが1より小さい" do
        @teacher.grade = 0
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Grade must be greater than 0")
      end
      it "gradeが3より大きい" do
        @teacher.grade = 4
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Grade must be less than 4")
      end
      it "my_classが空" do
        @teacher.my_class = nil
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("My class can't be blank")
      end  
      it "my_classが全角数字" do
        @teacher.my_class = "３"
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("My class is not a number")
      end
      it "my_classが1より小さい" do
        @teacher.my_class = 0
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("My class must be greater than 0")
      end
      it "teacher_passwordが空" do
        @teacher.teacher_password = nil
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Teacher password can't be blank")
      end
    end  
  end
    
end