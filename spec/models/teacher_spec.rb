require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe "教員作成機能のテスト" do
    before do
      @teacher = FactoryBot.build(:teacher)
    end
    context "教員の作成が成功する時" do
      it "name,grade,my_class,year,teacher_passwordが空ではない,
          gradeは数値であり,1~3で入力される,
          my_classは数値であり,1以上で入力される,
          yearは数値であり,4字である" do
        expect(@teacher).to be_valid
      end    
    end
    context "教員の作成が失敗する時" do
      it "nameが空" do
        @teacher.name = nil
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("名前が未入力です")
      end  
      it "gradeが空" do
        @teacher.grade = nil
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("学年が未入力です")
      end
      it "gradeが全角数字" do
        @teacher.grade = "３"
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("学年は数値で入力してください")
      end
      it "gradeが1より小さい" do
        @teacher.grade = 0
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("学年は0より大きい値にしてください")
      end
      it "gradeが3より大きい" do
        @teacher.grade = 4
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("学年は4より小さい値にしてください")
      end
      it "my_classが空" do
        @teacher.my_class = nil
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("組番号が未入力です")
      end  
      it "my_classが全角数字" do
        @teacher.my_class = "３"
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("組番号は数値で入力してください")
      end
      it "my_classが1より小さい" do
        @teacher.my_class = 0
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("組番号は0より大きい値にしてください")
      end
      it "yearが空" do
        @teacher.year = nil
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Yearが未入力です")
      end  
      it "yearが全角数字" do
        @teacher.year = "２０２０"
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Yearは数値で入力してください")
      end  
      it "yearが4より小さい" do
        @teacher.year = 202
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Yearは4文字で入力してください")
      end  
      it "yearが4より大きい" do
        @teacher.year = 20200
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("Yearは4文字で入力してください")
      end  
      it "teacher_passwordが空" do
        @teacher.teacher_password = nil
        @teacher.valid?
        expect(@teacher.errors.full_messages).to include("教員用パスワードが未入力です")
      end
    end  
  end
    
end