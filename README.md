# shift app

## アプリ説明
あるが意図などのシフト作成をドラッグ&ドロップで可能にするアプリです。

## 制作背景(意図)
⇒学生時代のアルバイト先の社員さんにとてもお世話になったので、そういったかただ使えるものでやらなければいけないことや面倒に感じている作業を少しでも減らせればと考え、その中で考えついたのがこのアプリです。

シフトの作成時に毎回毎回その日にシフトに入れる人を確認しながら、名前を打ち込む作業は効率が悪く、その日にシフトに入れる人が一覧で並んでいて、それをドラッグ&ドロップで入れ込むだけにすればだいぶ楽になるのではないかと考え作りました。

## 使用技術(開発環境)
Ruby on Rails	
MySql
JavaScript
github

## 課題や今後実装したい機能
細かい時間ごとのシフト提出、及び作成ができるようにしたいと考えています。

## テーブル設計

### users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| name               | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| position_id        | integer | null: false               |

#### Association

- has_many :shifts, through: :user_shifts
- has_many :user_shifts
- has_many :days

### shifts テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| user               | references | null: false |
| shift_date_id      | references | null: false |
| ok_id              | references | null: false |

#### Association

- has_many :users, through: :user_shifts
- has_many :user_shifts

### days テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| user       | references | null: false |
| ok_id      | integer    | null: false |
| shift_date | date       | null: false |

#### Association

- belongs_to :user
- has_many :shifts

### user_shifts テーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| user   | references | null: false |
| shift  | references | null: false |

#### Association

- belongs_to :user
- belongs_to :shift