# アプリ名
 
tennis-match-make  (http://52.196.64.203/)
 
# サンプル画像

![スクリーンショット 2020-01-30 19 40 15](https://user-images.githubusercontent.com/52908553/73450653-2e16c680-43a9-11ea-8570-c67595964b97.png)
![スクリーンショット 2020-01-30 19 42 37](https://user-images.githubusercontent.com/52908553/73450690-44248700-43a9-11ea-80fa-00f8e1704044.png)

# 特徴
 テニスのマッチングサイトを作成しました。テニスがしたいけど、近くに仲間やコートがない方や
テニスをする環境はあるけど人がなかなか集まらない方などをマッチングするためのサービスです。

本サービスの特徴は、より細かくテニスイベントの参加条件を指定できることです。細かく参加条件を指定できることで、同じぐらいの年代の方のみを集めたり、同じスキルレベルのメンバーのみを集めたりすることができます。

このため、より趣味嗜好に沿ったイベントを開催・参加することができ、満足のいくイベントになること間違いなしです！

 ※条件指定できるパラメータ  
    ・年代  
    ・性別  
    ・スキル平均値(サーブ、リターン、ストロークなどの平均値)  
    ・コミュニケーション能力  
    ・利き腕  

ぜひご利用ください！ 

# 作成した画面・機能
・AWSを活用したデプロイ
・S3を活用した画像アップロード機能

・deviseを用いたユーザ登録画面  
・サインイン、サインアウト機能  
・ログイン、ログアウト機能   

・イベント作成画面  
・イベント編集、削除画面  

・マイページ照会画面  
 
# 技術的に工夫した点
①自分のステータスがイベント参加条件を満たしているのか判断ロジックを作成しました。

②自分のテニススキルを可視化するためにchart.jsを導入しレーダーチャートで照会できるようにしました。
 
# 今後実装したい機能
①テニスイベントを作成する際、タグを付与できるようにしイベントの雰囲気を伝わりやすくするしたいです。(例：初心者歓迎、ガチ勢オンリー、左利きオンリー、20代限定など)

gem 'acts-as-taggable-on'を活用すればタグ機能の導入ができるので、具体的な実装内容を調査の上、導入していきたいです。  

 
②テニスイベント開催会場をgooglemap上で表示させるようにしたいです。

google api keyを活用すればgooglemapを導入できるので具体的な実装内容を調査の上、導入していきたいです。    


③悪質な参加者、主催者を除外するためにイベント参加後にお互いの評価をできるようにしたいです。

非同期通信で実装できることを確認しているので、具体的な実装内容を調査の上、導入していきたいです。  

 
# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, add_index|
|email|string|null: false, unique: true|
|password|string|null: false|
|profile|text| |
|sex|string|null: false|
|age|integer|null: false|
|address|integer|null: false, unique: true|

### Association
- has_one :ability
- has_many :posts
- has_many :participants

## abilitiesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|experience|integer|null: false|
|password|string|null: false|
|serve|integer|null: false|
|return|integer|null: false|
|stroke|integer|null: false|
|footwork|integer|null: false|
|mental|integer|null: false|
|communication|integer|null: false|

### Association
- belongs_to :user

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false, add_index|
|place|string|null: false|
|venue|string|null: false|
|address|string|null: false|
|date|date|null: false|
|start_time|time|null: false|
|end_time|time|null: false|
|explanation|text|null: false|
|cost|integer| |
|recruit|integer|null: false|
|ave_low|integer| |
|ave_high|integer| |
|com_low|integer| |
|com_high|integer| |
|age|integer| |
|sex|string| |
|dominant|string| |
|user_id|references|null: false, foreign_key: true|
|image|string| |
### Association
- belongs_to :user
- has_many :participants

## participantsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|string|null: false, foreign_key: true|
|user_id|string|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post
