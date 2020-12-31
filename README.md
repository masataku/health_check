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
目的: どの学校についての健康チェック機能なのか明確にするため
詳細: 登録される教員や生徒がどこの学校に属しているか明確になり、教員や生徒が知るパスワードを設定することもでき、機能の中枢を担うことができる。
ストーリー(ユースケース): アプリのトップページから、校長または教頭などが学校を作成し、その学校の生徒や教員が機能を扱えるための各パスワードの設定・変更などが行える。


- 機能: 生徒管理機能
目的: 生徒についての健康チェックシートを作る主体が必要だから
詳細: 学校を作成した後で、生徒は情報を新規登録できるようになり、ログイン・ログアウト機能も持つ。
ストーリー(ユースケース): 学校側から指定されたページとパスワードが必要。名前、学年、クラスなどの情報を記入し生徒の親が登録する。ログイン中に健康チェックを作成できる。１日に１つだけ作れる。


- 機能: 教員管理機能
目的: その学校の教員が登録し、シートの作成や健康チェックについての情報を共有する
詳細: 学校を作成した後で、教員は情報を新規登録できるようになり、ログイン・ログアウト機能も持つ。
ストーリー(ユースケース): 学校側から指定されたページとパスワードが必要。名前、学年、クラスなどの情報を記入しその学校の教員が登録する。ログイン中にお知らせ・シートの作成などができる。


- 機能: シート作成機能
目的: 各生徒の健康チェックを各クラスごとにまとめるため
詳細: 教員が作成することができる。学年・組を指定することで、属する生徒をまとめることができる。
ストーリー(ユースケース): ログインしている教員が作成することができる。どの学年のどのクラスのシートかを決められる。


- 機能: シート一覧機能
目的: 各クラス別にまとめたシートを一覧で確認したい
詳細: 各学年各組ごとにまとめられたシートが一覧で表示され、詳細を確認したいものを選択することができる。
ストーリー(ユースケース): トップページよりログイン中の教員が各クラスのシートを確認したり選択することができる。


- 機能: シート詳細機能
目的: 個別のクラスごとにシートの中身を確認したい
詳細: 個別のクラスごとにまとめられた健康チェックを確認することができる。
ストーリー(ユースケース): トップページよりログイン中の教員が各クラスのシートから詳細を確認したい物を選択すると、そのクラスのチェックの一覧が確認できる。


- 機能: シート編集機能
目的: どの学年のどのクラスのシートなのか編集したい
詳細: どの学年のどのクラスのシートなのかを、シート作成後教員が編集するための機能。
ストーリー(ユースケース): どの学年のどのクラスのシートなのかを、シート作成後教員が編集することができる。編集する情報は学年とクラスだけなので、基本的にはあまり使わないと思うが、作成後すぐ修正したいときに使えるとよいと思う。


- 機能: シート削除機能
目的: 必要に応じてシートを削除するため
詳細: シートを教員が削除することができる。そのシートに紐づいた健康チェックも削除される。
ストーリー(ユースケース): 必要のないシートとそれに紐づく健康チェックを消すことができる。年度が変わった後、残す必要がない場合や、誤って不必要なシートを作ったときに削除できる。削除時にはパスワードが必要。


- 機能: 健康チェック作成機能
目的: 生徒ごとの朝の健康チェックのデータを作りたい
詳細: 生徒が作成できるデータ。朝食の有無・体温・症状などのチェックを行い作成する。
ストーリー(ユースケース): ログイン中の生徒が作成できる。ログイン中は基本的に作成ページのみ表示される。必要な健康についての選択肢や所見欄、出欠についてなどを埋めて作成する。


- 機能: 健康チェック一覧機能
目的: 健康チェックのデータを一覧で確認したい
詳細: シートの詳細で、各クラスごとの健康チェックデータが一覧で表示される。
ストーリー(ユースケース): 教員がトップページのシート一覧からその詳細を確認すると、そのクラスの生徒の健康チェック一覧が確認できる。


- 機能: 健康チェック詳細機能
目的: 健康チェックのデータを個別で確認したい
詳細: 健康チェック一覧から個別に健康チェックの詳細を見ることができる。
ストーリー(ユースケース): 健康チェック一覧から、個別に選択すると、より各項目の見やすい詳細画面が確認できる。お知らせもそこから作れる。


- 機能: お知らせ作成機能
目的: 健康チェック項目を更新したり、何か共有すべきことについてのお知らせを作りたい
詳細: 健康チェック項目の一部を教員が更新したり、何か共有すべきことについてのお知らせを作成できる。
ストーリー(ユースケース): 健康チェック詳細から、教員が出欠の変更や遅刻・早退などについて変更した場合などに作成される。作成時、必要ならばメッセージも付けられる。


- 機能: お知らせ一覧機能
目的: 共有すべきお知らせを一覧で確認したい
詳細: 作成されたお知らせが、作成時間順に一覧で表示される。
ストーリー(ユースケース): 教員がトップページから確認できる。作成時間順に表示される。


# ER図
ファイル名 「ER.dio」に記載

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
- has_many :teachers
- has_many :students


## students テーブル

| Column          | Type    | Options                        |
| --------------- | ------- | ------------------------------ |
| email           | string  | null: false                    |
| password        | string  | null: false                    |
| first_name      | string  | null: false                    |
| last_name       | string  | null: false                    |
| first_name_kana | string  | null: false                    |
| last_name_kana  | string  | null: false                    |
| grade           | integer | null: false                    |
| my_class        | integer | null: false                    |
| number          | integer | null: false                    |
| school          | integer | foreign_key: true, null: false | 
| sheet           | integer | foreign_key: true, null: false | 

### Association
- belongs_to :school
- has_many :checks
- belongs_to :sheet


## teachers テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| email           | string     | null: false                    |
| password        | string     | null: false                    |
| first_name      | string     | null: false                    |
| last_name       | string     | null: false                    |
| first_name_kana | string     | null: false                    |
| last_name_kana  | string     | null: false                    |
| grade           | integer    | null: false                    |
| my_class        | integer    | null: false                    |
| school          | references | foreign_key: true, null: false |

### Association
- has_many :sheets
- belongs_to :school
- has_many :notifications


## sheets テーブル

| Column   | Type       | Options                        |
| ---------| ---------- | ------------------------------ |
| date     | date       | null: false                    |
| grade    | integer    | null: false                    |
| my_class | integer    | null: false                    |
| teacher  | references | foreign_key: true, null: false |

### Association
- belongs_to :teacher
- has_many :students
- has_many :checks


## checks テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| date         | date       | null: false                    |
| condition_id | integer    | null: false                    |
| symptoms_id  | integer    |                                |
| opinion      | text       |                                |
| attend       | boolean    | null: false                    |
| check        | boolean    | null: false                    |
| breakfast    | boolean    | null: false                    |
| bed_time     | string     | null: false                    |
| temperature  | string     | null: false                    |
| leave_early  | boolean    | default: false                 |
| late         | boolean    | default: false                 |
| student      | references | foreign_key: true, null: false |
| sheet        | references | foreign_key: true, null: false |

### Association
- has_many :notifications
- belongs_to :students
- belongs_to :sheet


## notifications テーブル

| Column   | Type       | Options                        |
| ---------| ---------- | ------------------------------ |
| text     | text       |                                |
| check    | references | foreign_key: true, null: false |
| teacher  | references | foreign_key: true, null: false |

### Association
- belongs_to :teacher
- belongs_to :check