class CreatePresents < ActiveRecord::Migration[7.0]
  def change
    create_table :presents do |t|
      t.string      :title, null: false
      t.string      :present_name, null: false
      t.text        :text
      t.string      :shop
      t.integer     :price
      t.text        :memo
      t.string      :url
      t.integer     :box_id, null: false
      t.integer     :user_id, null: false
      t.timestamps
    end
  end
end
