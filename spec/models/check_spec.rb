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
        expect(@check.errors.full_messages).to include("Date can't be blank")
      end  
      it 'condition_idが空' do
        @check.condition_id = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Condition can't be blank")
      end  
      it 'condition_idが全角数字' do
        @check.condition_id = "２"
        @check.valid?
        expect(@check.errors.full_messages).to include("Condition is not a number")
      end  
      it 'condition_idが1より小さい' do
        @check.condition_id = 0
        @check.valid?
        expect(@check.errors.full_messages).to include("Condition must be greater than 0")
      end  
      it 'condition_idが3より大きい' do
        @check.condition_id = 4
        @check.valid?
        expect(@check.errors.full_messages).to include("Condition must be less than 4")
      end  
      it 'checkが空' do
        @check.check = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Check can't be blank")
      end  
      it 'bed_time_idが空' do
        @check.bed_time_id = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Bed time can't be blank")
      end 
      it 'bed_time_idが全角数字' do
        @check.bed_time_id = "２"
        @check.valid?
        expect(@check.errors.full_messages).to include("Bed time is not a number")
      end   
      it 'bed_time_idが2より小さい' do
        @check.bed_time_id = 1
        @check.valid?
        expect(@check.errors.full_messages).to include("Bed time must be greater than 1")
      end 
      it 'bed_time_idが12より大きい' do
        @check.bed_time_id = 13
        @check.valid?
        expect(@check.errors.full_messages).to include("Bed time must be less than 13")
      end 
      it 'symptoms_idが空' do
        @check.symptoms_id = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Symptoms can't be blank")
      end 
      it 'symptoms_idが全角数字' do
        @check.symptoms_id = "２"
        @check.valid?
        expect(@check.errors.full_messages).to include("Symptoms is not a number")
      end   
      it 'symptoms_idが1より小さい' do
        @check.symptoms_id = 0
        @check.valid?
        expect(@check.errors.full_messages).to include("Symptoms must be greater than 0")
      end  
      it 'symptoms_idが2より大きい' do
        @check.symptoms_id = 3
        @check.valid?
        expect(@check.errors.full_messages).to include("Symptoms must be less than 3")
      end 
      it 'temperature_idが空' do
        @check.temperature_id = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Temperature can't be blank")
      end 
      it 'temperature_idが全角数字' do
        @check.temperature_id = "２"
        @check.valid?
        expect(@check.errors.full_messages).to include("Temperature is not a number")
      end   
      it 'temperature_idが2より小さい' do
        @check.temperature_id = 1
        @check.valid?
        expect(@check.errors.full_messages).to include("Temperature must be greater than 1")
      end  
      it 'temperature_idが22より大きい' do
        @check.temperature_id = 23
        @check.valid?
        expect(@check.errors.full_messages).to include("Temperature must be less than 23")
      end 
      it 'breakfastがnil' do
        @check.breakfast = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Breakfast is not included in the list")
      end  
      it 'attendがnil' do
        @check.attend = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Attend is not included in the list")
      end 
      it 'leave_earlyがnil' do
        @check.leave_early = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Leave early is not included in the list")
      end   
      it 'lateがnil' do
        @check.late = nil
        @check.valid?
        expect(@check.errors.full_messages).to include("Late is not included in the list")
      end  
      it 'opinionが40字より多く入力される' do
        @check.opinion = "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわおん"
        @check.valid?
        expect(@check.errors.full_messages).to include("Opinion is too long (maximum is 40 characters)")
      end  
    end  
  end  
end
