require 'rails_helper'

RSpec.describe "Schools", type: :request do

  describe "GET #index" do 
    it "indexアクションにリクエストすると正常にレスポンスが返ってくる" do
      get root_path
      expect(response.status).to eq 200
    end  
    it "indexアクションにリクエストすると学校新規作成リンクが表示されている" do
      get root_path
      expect(response.body).to include "今すぐはじめる"
      expect(response.body).to include "新規学校作成"
    end  
    it "indexアクションにリクエストするとがログインリンクが表示されている" do
      get root_path
      expect(response.body).to include "自分の学校へ行く"
    end  

    it "indexアクションにリクエストすると現在全国で参加している学校数が表示されている" do
      get root_path
      expect(response.body).to include "0 校"
    end  
    it "indexアクションにリクエストすると現在全国で参加している学校数が表示されている" do
      FactoryBot.create(:school)
      get root_path
      expect(response.body).to include "1 校"
    end  
  end

  describe "GET #new" do 
    it "newアクションにリクエストすると正常にレスポンスが返ってくる" do
      get new_school_path
      expect(response.status).to eq 200
    end  
    it "newアクションにリクエストすると学校新規作成リンクが表示されている" do
      get new_school_path
      expect(response.body).to include "新規学校作成"
    end  
    it "newアクションにリクエストするとがログインリンクが表示されている" do
      get new_school_path
      expect(response.body).to include "自分の学校へ行く"
    end  

    it "newアクションにリクエストすると学校作成ボタンがある" do
      get new_school_path
      expect(response.body).to include "この学校ではじめる"
    end  
  end

  describe "GET #login_form" do 
    it "login_formアクションにリクエストすると正常にレスポンスが返ってくる" do
      get login_form_schools_path
      expect(response.status).to eq 200
    end  
    it "login_formアクションにリクエストすると学校新規作成リンクが表示されている" do
      get login_form_schools_path
      expect(response.body).to include "新規学校作成"
    end  
    it "login_formアクションにリクエストするとがログインリンクが表示されている" do
      get login_form_schools_path
      expect(response.body).to include "自分の学校へ行く"
    end  

    it "login_formアクションにリクエストするとログインボタンがある" do
      get login_form_schools_path
      expect(response.body).to include "ログイン"
    end  
  end
end
