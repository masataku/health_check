# アプリケーション名
Healthy School

# アプリケーション概要
 このアプリケーションは学校で使う生徒の健康チェックアプリです。
学校から生徒と教員が登録をして使います。 
登録した生徒の親は、朝の数分の間に子供と朝、健康についてのやりとりを行い、
アプリから健康チェックの必要項目を埋め、送信します。そのデータは、教員の作成したクラスごとのシートにまとめられ、
楽にその日の生徒の健康状態を確認でき、遅刻・早退・欠席など含め、その日の間に生徒の健康について、
必要に応じてお知らせを作成し教員間で情報を共有することもできます。

# URL

# テスト用アカウント

# 利用方法

# 目指した課題解決
### 課題について
(保護者目線)
- 仕事前で朝子供と触れ合う時間がもてていない 
- 毎朝子供の体調は気にしていない
- あまり朝ごはんを作らない
- お母さんは夜勤で朝はお父さんがいるが、あまり子供と関わっていない
- 子供の体調については学校に任せがち

(教員目線)
- 朝のホームルームで出欠確認と健康チェックに時間を取られ忙しく感じている
- 欠席の生徒について電話で確認しなければならない
- コロナ禍で健康チェックに気を使わなければならない
- 養護教諭は各学年ごとにチェックシートを回収し、記載内容を見てチェックしなければならない
- チェックミスもありうる
### 解決について
保護者が今日の朝子供と共有した健康状態をアプリで報告することで、健康チェックを教師がメインでHRで細かく確認する必要がなくなり、
HR~授業までの間の朝の時間にゆとりが持てる。
子供の健康管理について親との責任の分担にもなる。
欠席について保護者・教員のお互いが電話で連絡する必要がなくなる。
紙の健康チェックシートではないので、書き間違いの心配がない。
まとまった情報を各学年クラスごとに隔たりなく手軽に確認することができる。
仕事前でつい朝に子供との時間を取れない保護者の、子供とのコミュニケーションの機会になる。
朝ごはんをしっかり作ろう、就寝時間を気にしようなど、子供の健康に関わることに積極的に関わりうとすることに繋がる。
# 洗い出した要件
- 機能: 学校作成機能
- 目的: どの学校についての健康チェック機能なのか明確にするため。
- 詳細: 登録される教員や生徒がどこの学校に属しているか明確になり、教員や生徒が知るパスワードを設定することもでき、機能の中枢を担うことができる。
- ストーリー(ユースケース): アプリのトップページから、校長または教頭などが学校を作成し、その学校の生徒や教員が機能を扱えるための各パスワードの設定・変更,登録用URLの発 行などが行える。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: 生徒作成機能
- 目的: 生徒についての健康チェックシートを作る主体が必要だから。
- 詳細: 学校を作成した後で、生徒は共有されたURLから生徒用パスワードを用い新規登録できるようになる。
- ストーリー(ユースケース): 学校作成者から用意されたURLとパスワードが必要。名前・学年・組・番号の情報を記入し生徒の親が登録する。登録した生徒は健康チェック作成ボタンからチェックシートを作成できる。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: 教員作成機能
- 目的: その学校の教員が登録し、各クラスの健康チェックについての情報を共有する。
- 詳細: 学校を作成した後で、教員は共有されたURLから教員用パスワードを用い新規登録できるようになる。
- ストーリー(ユースケース): 学校作成者から用意されたページとパスワードが必要。名前・担当学年・組などの情報を記入しその学校の教員が登録する。各クラスごとのシート一覧を見ることができ、選択したシートのチェック一覧を確認することができる。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: 教員一覧機能
- 目的: 登録済みの教員を学年ごとに分けて一覧で表示したい。
- 詳細: 登録済みの教員の名前と組を学年ごとに分けて表示することができる。
- ストーリー(ユースケース): 登録済みの教員はトップページのサイドに、学年ごとに分けられて、名前と組の情報が表示される。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: 教員削除機能
- 目的: 登録済みの教員情報を削除するため。
- 詳細: 登録済みの教員情報を削除することができる。
- ストーリー(ユースケース): 登録済みの教員は、トップページのサイドに表示される教員一覧から、削除したい教員の削除ボタンを押して削除することができる。削除された教員は新規登録フォームへ戻る。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: シート作成機能
- 目的: 各生徒の健康チェックを各クラスごとにまとめるため。
- 詳細: どの日の、どのクラスの生徒の健康チェックかをまとめて管理することができる。
- ストーリー(ユースケース): あるクラスの最初の健康チェックが送信された時クラスごとに自動で作成される。教員はトップページに表示されたシートの一覧から選び、見たいクラスのチェック一覧を確認することができる。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: シート一覧機能
- 目的: 各クラス別にまとめたシートを一覧で確認したい。
- 詳細: 各学年各組ごとにまとめられたシートが一覧で表示され、詳細を確認したいものを選択することができる。
- ストーリー(ユースケース): 登録済みの教員がトップページに表示されている各クラスのシートを選択し、そのクラスのチェック一覧を確認することができる。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: シート詳細機能(健康チェック一覧機能)
- 目的: 各クラスごとにシートの中身である送信されたチェックを確認したい。
- 詳細: 日付と各クラスごとにシートにまとめられた健康チェックを確認することができる。
- ストーリー(ユースケース): トップページより登録済みの教員が、一覧で表示されている各クラスのシートから詳細を確認したい物を選択すると、そのクラスのチェックの一覧が確認できる。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: 健康チェック作成機能
- 目的: 生徒ごとの朝の健康チェックのデータを作りたい。
- 詳細: １日に一回生徒が作成できる。朝食の有無・体温・症状などのチェックを行い作成する。
- ストーリー(ユースケース): 登録済みの生徒が作成できる。健康チェック作成ボタンより作成ページへとび、必要な健康についての選択肢や所見欄、出欠についてなどを埋めて送信する。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: 健康チェック詳細機能(未実装)
- 目的: 生徒が過去作成済みの健康チェックのデータを確認したい。
- 詳細: 生徒が過去作成済みの健康チェックのデータを確認することができる。
- ストーリー(ユースケース): 登録済みの生徒が、過去に自分が作成したある日付の健康チェックを確認することができる。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: お知らせ作成機能(未実装)
- 目的: 健康チェック項目を更新したり、何か共有すべきことについてのお知らせを作りたい
- 詳細: 健康チェック項目の一部を教員が更新したり、何か共有すべきことについてのお知らせを作成できる。
- ストーリー(ユースケース): 健康チェック詳細から、教員が出欠の変更や遅刻・早退などについて変更した場合などに作成される。作成時、必要ならばメッセージも付けられる。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: シートへのコメント機能(未実装)
- 目的: その日のあるクラスの健康シートに関して共有するべき内容を投稿するため。
- 詳細: 
- ストーリー(ユースケース): 教員がシート詳細から作成確認できる。
---------------------------------------------------------------------------------------------------------------------------------------------

- 機能: 日付別シート一覧表示機能
- 目的: 過去に作成されたシートの一覧を日付ごとに表示したい。
- 詳細: 日付を指定することで、その日付に作成されたシートの一覧を表示することができる。
- ストーリー(ユースケース): 教員ページのサイドにある、カレンダーから日付を選んでボタンを押すと、選んだ日付のシートの一覧を表示させることができる。
---------------------------------------------------------------------------------------------------------------------------------------------


# ER図
https://gyazo.com/b7d32429418ec5b57531b7870cf0938d

# データベース設計
## schools テーブル

| Column           | Type    | Options                        |
| ---------------- | ------- | ------------------------------ |
| email            | string  | null: false                    |
| password         | string  | null: false                    |
| school_name      | string  | null: false                    |
| teacher_password | string  | null: false                    |
| student_password | string  | null: false                    |
 
### Association
- has_many :sheets
- has_many :teachers
- has_many :students


## students テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| student_password | string     | null: false                    |
| first_name       | string     | null: false                    |
| last_name        | string     | null: false                    |
| first_name_kana  | string     | null: false                    |
| last_name_kana   | string     | null: false                    |
| grade            | integer    | null: false                    |
| my_class         | integer    | null: false                    |
| number           | integer    | null: false                    |
| year             | integer    | null: false                    |
| school           | references | foreign_key: true, null: false | 


### Association
- belongs_to :school
- has_many :checks



## teachers テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| grade            | integer    | null: false                    |
| my_class         | integer    | null: false                    |
| teacher_password | string     | null: false                    |
| school           | references | foreign_key: true, null: false |

### Association
- belongs_to :school
- has_many :notifications


## sheets テーブル

| Column   | Type       | Options                        |
| ---------| ---------- | ------------------------------ |
| grade    | integer    | null: false                    |
| my_class | integer    | null: false                    |
| year     | integer    | null: false                    |
| date     | date       | null: false                    |
| school   | references | foreign_key: true, null: false |

### Association
- belongs_to :school
- has_many :checks


## checks テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| date           | date       | null: false                    |
| condition_id   | integer    | null: false                    |
| symptoms_id    | integer    |                                |
| opinion        | text       |                                |
| attend         | boolean    | null: false, default: true     |
| check          | boolean    | null: false, default: false    |
| breakfast      | boolean    | null: false, default: true     |
| bed_time_id    | integer    | null: false                    |
| temperature_id    | integer    | null: false                    |
| leave_early    | boolean    | null: false, default: false    |
| late           | boolean    | null: false, default: false    |
| student        | references | foreign_key: true, null: false |
| sheet          | references | foreign_key: true, null: false |

### Association
- has_many :notifications
- belongs_to :student
- belongs_to :sheet
- has_many :symptoms, through: :check_symptoms
- has_many :check_symptoms


## notifications テーブル

| Column   | Type       | Options                        |
| ---------| ---------- | ------------------------------ |
| text     | text       |                                |
| check    | references | foreign_key: true, null: false |
| teacher  | references | foreign_key: true, null: false |

### Association
- belongs_to :teacher
- belongs_to :check


## check_symptoms テーブル

| Column   | Type       | Options                        |
| ---------| ---------- | ------------------------------ |
| check    | references | foreign_key: true, null: false |
| symptom  | references | foreign_key: true, null: false |

### Association
- belongs_to :check
- belongs_to :symptom


## symptoms テーブル

| Column   | Type       | Options     |
| ---------| ---------- | ----------- |
| name     | string     | null: false |

### Association
- has_many :checks, through: :check_symptoms
- has_many :check_symptoms