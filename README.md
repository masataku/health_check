# アプリケーション名
Healthy School

# アプリケーション概要
このアプリケーションは学校で使う生徒の健康チェックアプリです。
学校から用意されたURLから生徒の保護者と教員が登録をして使います。
登録した生徒の親は、朝の数分の間に子供と朝、健康についてのやりとりを行い、
アプリから健康チェックの必要項目を埋め、データを送信します。そのデータはクラスごとのシートにまとめられ、教員が共有することができます。
シート詳細からその日の生徒の出席の有無、就寝時間、体温、症状などの健康状態を確認でき、教員間で各クラスの生徒の情報を簡単に共有することができます。


# 本番環境URL
http://54.150.91.25/

# テスト用アカウント
学校名: 青山中学校
校長名: 青山太郎
email: 111@111(ログインに必要)
password: 12345a(ログインに必要)
teacher_password: 12345a(教員の新規登録に必要)
student_password: 12345a(生徒の新規登録に必要) 


# 制作背景(意図)
私の勤めていた中学校では、生徒の健康チェックは朝のホームルームで出席確認とともに行っていました。
その際手間に感じた部分に以下のようなものがありました。
- 毎回生徒にその場で確認しチェック表に手書き記入すること
- チェックしたその日の生徒の健康情報や出欠情報を、口頭のコミュニケーション、または置いてある出席簿やシート、職員室のボードにかかれる内容から把握すること
- 欠席する生徒の電話確認と、欠席なのか登校中なのか不明な生徒についての電話確認
- 回収した健康チェックシートを養護教諭の先生が確認するのが大変そうだと思ったこと
またこれらの課題を解決したいと思ったことに加え、朝に保護者に健康チェックを行ってもらうことにより、家庭で必要と思われるコミュニケーションが実現されることや、コロナ禍により大きくなっている子供の健康管理への責任分担にもつながるとの思いもあり、このアプリを企画しました。


# DEMO
### トップページ
[![Image from Gyazo](https://i.gyazo.com/512f453aba491fb81f7df35e26dd692a.png)](https://gyazo.com/512f453aba491fb81f7df35e26dd692a)
- トップページ中央の「今すぐはじめる」またはヘッダー右上の「新規学校作成」をクリックすると、新規学校作成フォームへ進めます。
[![Image from Gyazo](https://i.gyazo.com/931885bdd8cc350a21edf4f860a79dee.gif)](https://gyazo.com/931885bdd8cc350a21edf4f860a79dee)
- 新規登録ページで必要な情報を入力し、「この学校ではじめる」をクリックすると、登録が完了しマイページへ進みます。
[![Image from Gyazo](https://i.gyazo.com/58601e26f7041daca99f6efe59144d8e.gif)](https://gyazo.com/58601e26f7041daca99f6efe59144d8e)
- 右上の「自分の学校へ行く」をクリックすると、学校ログインフォームへ進めます。
[![Image from Gyazo](https://i.gyazo.com/295729aaa820879988e21ab6792daf8a.gif)](https://gyazo.com/295729aaa820879988e21ab6792daf8a)
- 学校マイページの教員の参加にある「リンクをコピー」をクリックすると、自動的に教員登録用URLがコピーできるので、参加する教員にパスワードと共に共有することで登録してもらいます。
[![Image from Gyazo](https://i.gyazo.com/89eaaee7a39de35b866b5f58328c1a92.gif)](https://gyazo.com/89eaaee7a39de35b866b5f58328c1a92)
- 生徒も同様に生徒の参加から、コピーしたURLとパスワードを共有することで登録してもらいます。
[![Image from Gyazo](https://i.gyazo.com/ff86c7f7dfa72e3024eed962c60f626e.gif)](https://gyazo.com/ff86c7f7dfa72e3024eed962c60f626e)


# 工夫した点
- 学校で使うという特性として、ホームページや職員室、保護者へのお知らせなどでURL・パスワードの共有が可能であり、機能に取り入れました。
- 機能やデザインをシンプルに見やすく作りました。ユーザーとしてwebサービスの利用に不慣れな人、移動や授業準備の合間に素早く確認したい教員、朝忙しい中データを送信する保護者を想定し、使いやすさを重視しました。
- 学校で使うアプリなので、セキュリティー面に注意しました。性質の異なるユーザーが利用するので、アクセスされるべきでないページや表示されるべきでない内容など、アクセス制限表示非表示の注意は特に意識しました。



# 目指した課題解決のまとめ
### 課題について
(保護者目線)
- 仕事前で朝子供と触れ合う時間がもてていない。 
- 毎朝子供の体調は気にしていない。
- あまり朝ごはんを作らない。
- お母さんは夜勤で朝はお父さんがいるが、あまり子供と関わっていない。
- 子供の体調については学校に任せがち。

(教員目線)
- 朝のホームルームで出欠確認と健康チェックに時間を取られ忙しく感じている。
- 欠席の生徒について電話で確認しなければならない。
- コロナ禍で健康チェックに気を使わなければならないし責任も大きい。
- 養護教諭は各学年ごとにチェックシートを回収し、記載内容を見てチェックしなければならない。
- チェックミスもありうる
### 解決について
- 保護者が今日の朝子供と共有した健康状態をアプリで報告することで、健康チェックを教師がメインでHRで細かく確認する必要がなくなり、HR~授業までの間の朝の時間にゆとりが持てる。
- 子供の健康管理について親との責任の分担にもなる。
- 欠席について保護者・教員のお互いが電話で連絡する必要がなくなる。
- 紙の健康チェックシートではないので、書き間違いの心配がなく、記入の手間も省ける。
- まとまった情報をどのクラスの先生も各学年クラスごとに隔たりなく手軽に確認することができる。
- 仕事前でつい朝に子供との時間を取れない保護者の、子供とのコミュニケーションの機会になる。
- 朝ごはんをしっかり作ろう、就寝時間を気にしようなど、子供の健康に関わることに積極的に関わりうとすることに繋がる。
- 生徒の家庭における健康課題の早期発見早期対応につなげることができる。


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
[![Image from Gyazo](https://i.gyazo.com/9818567c12a8428e92b8ffd8c6ed2e18.png)](https://gyazo.com/9818567c12a8428e92b8ffd8c6ed2e18)

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