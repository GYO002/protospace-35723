# README
##usersテーブル

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| email     | string | NOT NULL    |
| password  | string | NOT NULL    |
| name      | string | NOT NULL    |
| profile   | text   | NOT NULL    |
| occupation| text   | NOT NULL    |
| position  | text   | NOT NULL    |

Association
users has_many prototype
users has_many comments

##prototypesテーブル
| Column    | Type       | Options     |
| --------  | ---------- | ----------- |
| title     | string     | NOT NULL    |
| catch_copy| text       | NOT NULL    |
| concept   | string     | NOT NULL    |
| image     |            | NOT NULL    |
| user      | references | NOT NULL    |

Association
prototype belong_to users
prototype has_many comments

##commentテーブル
| Column   | Type      | Options     |
| -------- | ----------| ----------- |
| text     | references| NOT NULL    |
| user     | string    | NOT NULL    |
| prototype|  string   | NOT NULL    |

Association
comment belong_to users
comment belong_to prototype