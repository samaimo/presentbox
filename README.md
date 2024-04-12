# アプリケーション名
Prebo

# アプリケーション概要
プレゼントの記録をすることで、思い出を埋もれさせない。

# URL
https://presentbox.onrender.com

# テスト用アカウント
・ Basic認証パスワード：admin
・ Basic認証ID：2222
・ メールアドレス：test@test
・ パスワード：111aaa

# 利用方法
## プレゼントボックスを作成する
1. トップページ(一覧ページ)のサインアップアイコンをクリックし、新規ユーザー登録画面に遷移する
2. 新規ユーザー登録画面でユーザー登録をする
3. 

### プレゼントを作成する


# アプリケーションを作成した背景

# 洗い出した要件

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

# データベース設計

## usersテーブル

| Column                 | Type             | Options                 |
| ---------------------- | ---------------- | ----------------------- |
| nickname               | string           | null:false              |
| email                  | string           | null:false, unique:true |
| encrypted_password     | string           | null:false              |


### Association
- has_many :boxes
- has_many :presents

## boxesテーブル

| Column                 | Type             | Options                       |
| ---------------------- | ---------------- | ----------------------------- |
| box_name               | string           | null:false                    |
| birthday               | date             |                               |
| memo                   | text             |                               |
| anniversary_day        | date             |                               |
| occupation             | string           |                               |
| hobbies                | string           |                               |
| likes                  | string           |                               |
| dislikes               | string           |                               |
| favorite_color         | string           |                               |
| user_id                | integer          | null:false,foreign_key: true  |
| present_id             | integer          | null:false,foreign_key: true  |

### Association
- belongs_to :user
- has_many :presents

## presentsテーブル

| Column                 | Type             | Options                 |
| ---------------------- | ---------------- | ----------------------- |
| title                  | string           | null:false              |
| present_name           | string           |                         |
| text                   | text             |                         |
| message                | text             |                         |
| shop                   | string           |                         |
| price                  | integer          |                         |
| memo                   | string           |                         |
| url                    | text             |                         |
| user_id                | integer          | null:false,foreign_key: true  |
| box_id                 | integer          | null:false,foreign_key: true  |
| event_date             | date             |                         |
| event_place            | string           |                         |
| event_url              | text             |                         |


### Association
- belongs_to :user
- has_many :presents

# 画面遷移図

# 開発環境

# ローカルでの動作方法

# 工夫したポイント