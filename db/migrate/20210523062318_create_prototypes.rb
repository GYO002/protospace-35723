class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
          t.string :title
          t.text :catch_copy
          t.text :concept
          t.references :user, foreign_key: true #usersテーブルと関連したカラム（外部キー制約）誰が投稿したのかの紐付け②
          t.timestamps #保存した日付のテーブル②
    end
  end
end

