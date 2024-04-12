class CreatePresents < ActiveRecord::Migration[7.0]
  def change
    create_table :presents do |t|
      t.string      :title, null: false
      t.string      :present_name, null: false
      t.text        :text
      t.text        :message
      t.string      :shop
      t.integer     :price
      t.text        :memo
      t.string      :url
      t.references  :box, null: false, foreign_key: true
      t.references  :user, null: false, foreign_key: true
      t.date        :event_date
      t.timestamps
    end
  end
end
