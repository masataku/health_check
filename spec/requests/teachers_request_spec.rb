require 'rails_helper'

RSpec.describe "Teachers", type: :request do
  before do
    @school = FactoryBot.create(:school)
  end  
  describe "GET #new" do
    it "newアクションにリクエストすると正常にレスポンスが返ってくる" do
      get new_school_teacher_path(@school)
      expect(response.status).to eq 200
    end
    it "newアクションにリクエストすると教員作成ボタンがある" do
      get new_school_teacher_path(@school)
      expect(response.body).to include "教員として入る"
    end
  end  
end
