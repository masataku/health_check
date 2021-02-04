require 'rails_helper'

RSpec.describe Student, type: :model do
  describe '生徒作成機能のテスト' do
    before do
      @student = FactoryBot.build(:student)
    end  
    context '生徒の作成が成功する時' do
      it 'grade,my_class,number,first_name,last_name,first_name_kana,last_name_kana,year,student_passwordが空ではない,
          gradeは半角数字で1~3で入力されている,
          my_classとnumberは半角英数字で1以上で入力されている,
          first_name_kana,last_name_kanaは全角カタカナで入力されている,
          yearは半角数字で4字で入力されている' do
        expect(@student).to be_valid  
      end    
    end  
    context '生徒の作成が失敗する時' do
      it 'gradeが空' do
        @student.grade = nil
        @student.valid?
        expect(@student.errors.full_messages).to include("学年が未入力です")
      end  
      it 'gradeが全角数字' do
        @student.grade = "２"
        @student.valid?
        expect(@student.errors.full_messages).to include("学年は数値で入力してください")
      end  
      it 'gradeが1より小さい' do
        @student.grade = 0
        @student.valid?
        expect(@student.errors.full_messages).to include("学年は0より大きい値にしてください")
      end  
      it 'gradeが3より大きい' do
        @student.grade = 4
        @student.valid?
        expect(@student.errors.full_messages).to include("学年は4より小さい値にしてください")
      end  
      it 'my_classが空' do
        @student.my_class = nil
        @student.valid?
        expect(@student.errors.full_messages).to include("組番号が未入力です")
      end  
      it 'my_classが全角数字' do
        @student.my_class = "３"
        @student.valid?
        expect(@student.errors.full_messages).to include("組番号は数値で入力してください")
      end  
      it 'my_classが1より小さい' do
        @student.my_class = 0
        @student.valid?
        expect(@student.errors.full_messages).to include("組番号は0より大きい値にしてください")
      end  
      it 'numberが空' do
        @student.number = nil
        @student.valid?
        expect(@student.errors.full_messages).to include("出席番号が未入力です")
      end  
      it 'numberが全角数字' do
        @student.number = "２"
        @student.valid?
        expect(@student.errors.full_messages).to include("出席番号は数値で入力してください")
      end 
      it 'numberが1より小さい' do
        @student.number = 0
        @student.valid?
        expect(@student.errors.full_messages).to include("出席番号は0より大きい値にしてください")
      end   
      it 'first_nameが空' do
        @student.first_name = nil
        @student.valid?
        expect(@student.errors.full_messages).to include("名前が未入力です")
      end  
      it 'last_nameが空' do
        @student.last_name = nil
        @student.valid?
        expect(@student.errors.full_messages).to include("苗字が未入力です")
      end  
      it 'first_name_kanaが空' do
        @student.first_name_kana = nil
        @student.valid?
        expect(@student.errors.full_messages).to include("名前(カタカナ)が未入力です")
      end  
      it 'first_name_kanaが半角カタカナ' do
        @student.first_name_kana = "ｱｲｳ"
        @student.valid?
        expect(@student.errors.full_messages).to include("名前(カタカナ)全角カタカナのみで入力して下さい")
      end  
      it 'first_name_kanaが平仮名' do
        @student.first_name_kana = "あいう"
        @student.valid?
        expect(@student.errors.full_messages).to include("名前(カタカナ)全角カタカナのみで入力して下さい")
      end  
      it 'first_name_kanaが漢字' do
        @student.first_name_kana = "阿井右"
        @student.valid?
        expect(@student.errors.full_messages).to include("名前(カタカナ)全角カタカナのみで入力して下さい")
      end  
      it 'first_name_kanaが半角英語' do
        @student.first_name_kana = "abc"
        @student.valid?
        expect(@student.errors.full_messages).to include("名前(カタカナ)全角カタカナのみで入力して下さい")
      end  
      it 'first_name_kanaが全角英語' do
        @student.first_name_kana = "ＡＢＣ"
        @student.valid?
        expect(@student.errors.full_messages).to include("名前(カタカナ)全角カタカナのみで入力して下さい")
      end  
      it 'last_name_kanaが空' do
        @student.last_name_kana = nil
        @student.valid?
        expect(@student.errors.full_messages).to include("苗字(カタカナ)が未入力です")
      end 
      it 'last_name_kanaが半角カタカナ' do
        @student.last_name_kana = "ｱｲｳ"
        @student.valid?
        expect(@student.errors.full_messages).to include("苗字(カタカナ)全角カタカナのみで入力して下さい")
      end  
      it 'last_name_kanaが平仮名' do
        @student.last_name_kana = "あいう"
        @student.valid?
        expect(@student.errors.full_messages).to include("苗字(カタカナ)全角カタカナのみで入力して下さい")
      end  
      it 'last_name_kanaが漢字' do
        @student.last_name_kana = "阿井右"
        @student.valid?
        expect(@student.errors.full_messages).to include("苗字(カタカナ)全角カタカナのみで入力して下さい")
      end  
      it 'last_name_kanaが半角英語' do
        @student.last_name_kana = "abc"
        @student.valid?
        expect(@student.errors.full_messages).to include("苗字(カタカナ)全角カタカナのみで入力して下さい")
      end  
      it 'last_name_kanaが全角英語' do
        @student.last_name_kana = "ＡＢＣ"
        @student.valid?
        expect(@student.errors.full_messages).to include("苗字(カタカナ)全角カタカナのみで入力して下さい")
      end   
      it 'yearが空' do
        @student.year = nil
        @student.valid?
        expect(@student.errors.full_messages).to include("Yearが未入力です")
      end  
      it 'yearが全角数字' do
        @student.year = "１２３４"
        @student.valid?
        expect(@student.errors.full_messages).to include("Yearは数値で入力してください")
      end  
      it 'yearが4字より小さい' do
        @student.year = 123
        @student.valid?
        expect(@student.errors.full_messages).to include("Yearは4文字で入力してください")
      end  
      it 'yearが4字より大きい' do
        @student.year = 12345
        @student.valid?
        expect(@student.errors.full_messages).to include("Yearは4文字で入力してください")
      end  
      it 'student_passwordが空' do
        @student.student_password = nil
        @student.valid?
        expect(@student.errors.full_messages).to include("生徒用パスワードが未入力です")
      end  
    end  
  end  
end
