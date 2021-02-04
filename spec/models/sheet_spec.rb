require 'rails_helper'

RSpec.describe Sheet, type: :model do
  describe 'sheet作成機能のテスト' do
    before do
      @sheet = FactoryBot.build(:sheet)
    end  
    context 'sheetの作成が成功する時' do
      it 'grade,my_class,year,dateが空ではない,
          grade,my_class,yearは半角数字である,
          gradeは1~3で入力されている,
          my_classは1以上で入力されている,
          yearは4字で入力されている' do
        expect(@sheet).to be_valid  
      end  
    end
    
    context 'sheetの作成が失敗する時' do
      it 'gradeが空' do
        @sheet.grade = nil
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("Gradeが未入力です")
      end  
      it 'gradeが全角数字' do
        @sheet.grade = "３"
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("Gradeは数値で入力してください")
      end  
      it 'gradeが1より小さい' do
        @sheet.grade = 0
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("Gradeは0より大きい値にしてください")
      end  
      it 'gradeが3より大きい' do
        @sheet.grade = 4
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("Gradeは4より小さい値にしてください")
      end  
      it 'my_classが空' do
        @sheet.my_class = nil
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("My classが未入力です")
      end 
      it 'my_classが1より小さい' do
        @sheet.my_class = 0
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("My classは0より大きい値にしてください")
      end 
      it 'my_classが全角数字' do
        @sheet.my_class = "３"
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("My classは数値で入力してください")
      end  
      it 'yearが空' do
        @sheet.year = nil
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("Yearが未入力です")
      end  
      it 'yearが全角数字' do
        @sheet.year = "２０２０"
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("Yearは数値で入力してください")
      end 
      it 'yearが4字より大きい' do
        @sheet.year = 20200
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("Yearは4文字で入力してください")
      end   
      it 'yearが4字より小さい' do
        @sheet.year = 202
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("Yearは4文字で入力してください")
      end   
      it 'dateが空' do
        @sheet.date = nil
        @sheet.valid?
        expect(@sheet.errors.full_messages).to include("Dateが未入力です")
      end  
    end  
  end  
end
