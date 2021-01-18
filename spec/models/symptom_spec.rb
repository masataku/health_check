require 'rails_helper'

RSpec.describe Symptom, type: :model do
  describe '症状作成機能のテスト' do
    before do 
      @symptom = FactoryBot.build(:symptom)
    end  
    context '症状の作成に成功する時' do
      it 'nameが空ではない' do
        expect(@symptom).to be_valid
      end  
    end
    
    context '症状の作成に失敗する時' do
      it 'nameが空' do
        @symptom.name = nil
        @symptom.valid?
        expect(@symptom.errors.full_messages).to include("Name can't be blank")
      end  
    end  
  end  
end
