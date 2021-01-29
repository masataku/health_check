require 'rails_helper'

RSpec.describe "Students", type: :request do
  before do
    @school = FactoryBot.create(:school)
  end  
  describe "GET #new" do
    it "newアクションにリクエストすると正常にレスポンスが返ってくる" do
      get new_school_student_path(@school)
      expect(response.status).to eq 200
    end
    it "newアクションにリクエストすると生徒作成ボタンがある" do
      get new_school_student_path(@school)
      expect(response.body).to include "生徒登録する"
    end
  end  
end
