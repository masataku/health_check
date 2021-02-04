require 'rails_helper'

RSpec.describe School, type: :model do
  describe '学校作成機能のテスト' do
    before do
      @school = FactoryBot.build(:school)
    end
    context '学校の作成がうまく行く時' do
      it 'school_name,head_teacher,email,password,teacher_password,student_password,password_confirmationが空ではない.
          emailは@が含まれ,半角英数字と-_.の記号のみで入力されており,一意性がある.
          password,teacher_password,student_passwordは6文字以上で入力されている.
          password,teacher_password,student_passwordは半角英小文字数字のみでどちらも含まれる.
          passwordとpassword_confirmationが一致している' do
        expect(@school).to be_valid
      end  
    end

    context '学校の作成がうまくいかない時' do
      it 'school_nameが空' do
        @school.school_name = nil
        @school.valid?
        expect(@school.errors.full_messages).to include("学校名が未入力です")
      end
      it 'head_teacherが空' do
        @school.head_teacher = nil
        @school.valid?
        expect(@school.errors.full_messages).to include("校長名が未入力です")
      end
      it 'emailが空' do
        @school.email = nil
        @school.valid?
        expect(@school.errors.full_messages).to include("メールアドレスが未入力です")
      end
      it 'emailに @ が含まれない' do
        @school.email = "123-ab_c.com"
        @school.valid?
        expect(@school.errors.full_messages).to include("メールアドレスを適切に入力してください")
      end
      it 'emailに全角英大文字が含まれる' do
        @school.email = "Ａbcd@123.com"
        @school.valid?
        expect(@school.errors.full_messages).to include("メールアドレスを適切に入力してください")
      end
      it 'emailに全角英小文字が含まれる' do
        @school.email = "ａbcd@123.com"
        @school.valid?
        expect(@school.errors.full_messages).to include("メールアドレスを適切に入力してください")
      end
      it 'emailが一意性がない' do
        another_school = FactoryBot.create(:school)
        @school.email = another_school.email
        @school.valid?
        expect(@school.errors.full_messages).to include("メールアドレスはすでに存在します")
      end
      it 'passwordが空' do
        @school.password = nil
        @school.valid?
        expect(@school.errors.full_messages).to include("パスワードが未入力です")
      end
      it 'passwordが5文字以下' do
        @school.password = "1234a"
        @school.valid?
        expect(@school.errors.full_messages).to include("パスワードを適切に入力してください")
      end
      it 'passwordに全角英大文字が含まれる' do
        @school.password = "1234aＡ"
        @school.valid?
        expect(@school.errors.full_messages).to include("パスワードを適切に入力してください")
      end
      it 'passwordに全角英小文字が含まれる' do
        @school.password = "1234aｂ"
        @school.valid?
        expect(@school.errors.full_messages).to include("パスワードを適切に入力してください")
      end
      it 'passwordに全角文字が含まれる' do
        @school.password = "1234aあ"
        @school.valid?
        expect(@school.errors.full_messages).to include("パスワードを適切に入力してください")
      end
      it 'password_confirmationが空' do
        @school.password_confirmation = nil
        @school.valid?
        expect(@school.errors.full_messages).to include("パスワードの確認が未入力です")
      end  
      it 'passwordとpassword_confirmationが不一致' do
        @school.password_confirmation = "12345b"
        @school.valid?
        expect(@school.errors.full_messages).to include("パスワードの確認とパスワードの入力が一致しません")
      end
      it 'teacher_passwordが空' do
        @school.teacher_password = nil
        @school.valid?
        expect(@school.errors.full_messages).to include("教員用パスワードが未入力です")
      end
      it 'teacher_passwordが5文字以下' do
        @school.teacher_password = "1234a"
        @school.valid?
        expect(@school.errors.full_messages).to include("教員用パスワードを適切に入力してください")
      end
      it 'teacher_passwordに全角英大文字が含まれる' do
        @school.teacher_password = "1234aＢ"
        @school.valid?
        expect(@school.errors.full_messages).to include("教員用パスワードを適切に入力してください")
      end
      it 'teacher_passwordに全角英小文字が含まれる' do
        @school.teacher_password = "1234aｂ"
        @school.valid?
        expect(@school.errors.full_messages).to include("教員用パスワードを適切に入力してください")
      end
      it 'teacher_passwordに全角文字が含まれる' do
        @school.teacher_password = "1234aあ"
        @school.valid?
        expect(@school.errors.full_messages).to include("教員用パスワードを適切に入力してください")
      end
      it 'student_passwordが空' do
        @school.student_password = nil
        @school.valid?
        expect(@school.errors.full_messages).to include("生徒用パスワードが未入力です")
      end
      it 'student_passwordが5文字以下' do
        @school.student_password = "1234a"
        @school.valid?
        expect(@school.errors.full_messages).to include("生徒用パスワードを適切に入力してください")
      end
      it 'student_passwordに全角英大文字が含まれる' do
        @school.student_password = "1234aＢ"
        @school.valid?
        expect(@school.errors.full_messages).to include("生徒用パスワードを適切に入力してください")
      end
      it 'student_passwordに全角英小文字が含まれる' do
        @school.student_password = "1234aｂ"
        @school.valid?
        expect(@school.errors.full_messages).to include("生徒用パスワードを適切に入力してください")
      end
      it 'student_passwordに全角文字が含まれる' do
        @school.student_password = "1234aあ"
        @school.valid?
        expect(@school.errors.full_messages).to include("生徒用パスワードを適切に入力してください")
      end
    end
  end
    
end
