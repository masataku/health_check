require 'rails_helper'

RSpec.describe Check, type: :model do
  describe '健康チェック作成機能のテスト' do
    before do
      @check = FactoryBot.build(:check)
    end  
    context '健康チェックの作成に成功する時' do
      it 'date,condition_id,check,bed_time_id,symptoms_id,temperature_idが空ではない,
          condition_id,bed_time_id,symptoms_idは半角数字,
          condition_idは1~3が選ばれている,
          bed_time_idは2~12が選ばれている,
          temperature_idは2~22が選ばれている,
          symptoms_idは1か2が選ばれている,
          breakfast,attend,leave_early,lateはtrueまたはfalseである,
          opinionは40字以内で入力されている' do
        expect(@check).to be_valid
      end  
      it 'breakfast,attendがfalseでも登録できる' do
        @check.breakfast = false
        @check.attend = false
        expect(@check).to be_valid
      end  
      it 'opinionが空でも登録できる' do
        @check.opinion = nil
        expect(@check).to be_valid
      end  
    end
    
    context '健康チェックの作成に失敗する時' do
      it 'dateが空' do
        @check.date = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Dateが未入力です")
      end  
      it 'condition_idが空' do
        @check.condition_id = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Conditionが未入力です")
      end  
      it 'condition_idが全角数字' do
        @check.condition_id = "２"
        @check.valid?
        expect(@check.errors.full_messages).to include("Conditionは数値で入力してください")
      end  
      it 'condition_idが1より小さい' do
        @check.condition_id = 0
        @check.valid?
        expect(@check.errors.full_messages).to include("Conditionは0より大きい値にしてください")
      end  
      it 'condition_idが3より大きい' do
        @check.condition_id = 4
        @check.valid?
        expect(@check.errors.full_messages).to include("Conditionは4より小さい値にしてください")
      end  
      it 'checkが空' do
        @check.check = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("チェックをしてください")
      end  
      it 'bed_time_idが空' do
        @check.bed_time_id = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("が未入力です")
      end 
      it 'bed_time_idが全角数字' do
        @check.bed_time_id = "２"
        @check.valid?
        expect(@check.errors.full_messages).to include("選択してください")
      end   
      it 'bed_time_idが2より小さい' do
        @check.bed_time_id = 1
        @check.valid?
        expect(@check.errors.full_messages).to include("選択してください")
      end 
      it 'bed_time_idが12より大きい' do
        @check.bed_time_id = 13
        @check.valid?
        expect(@check.errors.full_messages).to include("選択してください")
      end 
      it 'symptoms_idが空' do
        @check.symptoms_id = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Symptomsが未入力です")
      end 
      it 'symptoms_idが全角数字' do
        @check.symptoms_id = "２"
        @check.valid?
        expect(@check.errors.full_messages).to include("Symptomsは数値で入力してください")
      end   
      it 'symptoms_idが1より小さい' do
        @check.symptoms_id = 0
        @check.valid?
        expect(@check.errors.full_messages).to include("Symptomsは0より大きい値にしてください")
      end  
      it 'symptoms_idが2より大きい' do
        @check.symptoms_id = 3
        @check.valid?
        expect(@check.errors.full_messages).to include("Symptomsは3より小さい値にしてください")
      end 
      it 'temperature_idが空' do
        @check.temperature_id = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("が未入力です")
      end 
      it 'temperature_idが全角数字' do
        @check.temperature_id = "２"
        @check.valid?
        expect(@check.errors.full_messages).to include("選択してください")
      end   
      it 'temperature_idが2より小さい' do
        @check.temperature_id = 1
        @check.valid?
        expect(@check.errors.full_messages).to include("選択してください")
      end  
      it 'temperature_idが22より大きい' do
        @check.temperature_id = 23
        @check.valid?
        expect(@check.errors.full_messages).to include("選択してください")
      end 
      it 'breakfastがnil' do
        @check.breakfast = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Breakfastは一覧にありません")
      end  
      it 'attendがnil' do
        @check.attend = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Attendは一覧にありません")
      end 
      it 'leave_earlyがnil' do
        @check.leave_early = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Leave earlyは一覧にありません")
      end   
      it 'lateがnil' do
        @check.late = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Lateは一覧にありません")
      end  
      it 'opinionが40字より多く入力される' do
        @check.opinion = "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわおん"
        @check.valid?
        expect(@check.errors.full_messages).to include("所見欄は40文字以内で入力してください")
      end  
    end  
  end  
end
