class CreateMemos < ActiveRecord::Migration[7.0]
  def change
    create_table :memos do |t|
      t.text :text
      t.references     :user, null: false, foreign_key: true
      t.references     :present, null: false, foreign_key: true
      t.timestamps
    end
  end
end