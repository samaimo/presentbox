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
| user                   | reference        | null:false,foreign_key: true  |
| box                    | reference        | null:false,foreign_key: true  |
| event_date             | date             |                         |


### Association
- belongs_to :user
- has_many :presents
